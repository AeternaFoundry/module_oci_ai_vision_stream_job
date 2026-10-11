variable "ai_vision_stream_jobs" {
  description = <<EOT
Map of ai_vision_stream_jobs, attributes below
Required:
    - compartment_id
    - stream_source_id
    - features (block):
        - feature_type (required)
        - max_results (optional)
        - should_return_landmarks (optional)
        - tracking_types (optional, block):
            - biometric_store_compartment_id (optional)
            - biometric_store_id (optional)
            - detection_model_id (optional)
            - max_results (optional)
            - objects (optional)
            - should_return_landmarks (optional)
            - tracking_model_id (optional)
    - stream_output_location (block):
        - bucket (required)
        - namespace (required)
        - obo_token (optional)
        - output_location_type (required)
        - prefix (required)
Optional:
    - defined_tags
    - display_name
    - freeform_tags
    - state
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id   = string
    stream_source_id = string
    defined_tags     = optional(map(string))
    display_name     = optional(string)
    freeform_tags    = optional(map(string))
    state            = optional(string)
    features = list(object({
      feature_type            = string
      max_results             = optional(number)
      should_return_landmarks = optional(bool)
      tracking_types = optional(list(object({
        biometric_store_compartment_id = optional(string)
        biometric_store_id             = optional(string)
        detection_model_id             = optional(string)
        max_results                    = optional(number)
        objects                        = optional(list(string))
        should_return_landmarks        = optional(bool)
        tracking_model_id              = optional(string)
      })))
    }))
    stream_output_location = object({
      bucket               = string
      namespace            = string
      obo_token            = optional(string)
      output_location_type = string
      prefix               = string
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ai_vision_stream_jobs : (
        length(v.features) >= 1
      )
    ])
    error_message = "Each features list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.ai_vision_stream_jobs : (
        alltrue([for item in v.features : (contains([for v in ["FACE_DETECTION", "OBJECT_TRACKING"] : lower(v)], lower(item.feature_type)))])
      )
    ])
    error_message = "must be one of: \"FACE_DETECTION\", \"OBJECT_TRACKING\""
  }
  validation {
    condition = alltrue([
      for k, v in var.ai_vision_stream_jobs : (
        contains([for v in ["OBJECT_STORAGE"] : lower(v)], lower(v.stream_output_location.output_location_type))
      )
    ])
    error_message = "must be one of: \"OBJECT_STORAGE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.ai_vision_stream_jobs : (
        v.state == null || (contains([for v in ["INACTIVE", "ACTIVE"] : lower(v)], lower(v.state)))
      )
    ])
    error_message = "must be one of: \"INACTIVE\", \"ACTIVE\""
  }
}


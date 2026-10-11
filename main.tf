resource "oci_ai_vision_stream_job" "ai_vision_stream_jobs" {
  for_each = var.ai_vision_stream_jobs

  compartment_id   = each.value.compartment_id
  stream_source_id = each.value.stream_source_id
  defined_tags     = each.value.defined_tags
  display_name     = each.value.display_name
  freeform_tags    = each.value.freeform_tags
  state            = each.value.state

  dynamic "features" {
    for_each = each.value.features
    content {
      feature_type            = features.value.feature_type
      max_results             = features.value.max_results
      should_return_landmarks = features.value.should_return_landmarks
      dynamic "tracking_types" {
        for_each = features.value.tracking_types != null ? features.value.tracking_types : []
        content {
          biometric_store_compartment_id = tracking_types.value.biometric_store_compartment_id
          biometric_store_id             = tracking_types.value.biometric_store_id
          detection_model_id             = tracking_types.value.detection_model_id
          max_results                    = tracking_types.value.max_results
          objects                        = tracking_types.value.objects
          should_return_landmarks        = tracking_types.value.should_return_landmarks
          tracking_model_id              = tracking_types.value.tracking_model_id
        }
      }
    }
  }

  stream_output_location {
    bucket               = each.value.stream_output_location.bucket
    namespace            = each.value.stream_output_location.namespace
    obo_token            = each.value.stream_output_location.obo_token
    output_location_type = each.value.stream_output_location.output_location_type
    prefix               = each.value.stream_output_location.prefix
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}


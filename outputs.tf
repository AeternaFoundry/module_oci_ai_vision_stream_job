output "ai_vision_stream_jobs_id" {
  description = "Map of id values across all ai_vision_stream_jobs, keyed the same as var.ai_vision_stream_jobs except keys with no id are omitted"
  value       = { for k, v in oci_ai_vision_stream_job.ai_vision_stream_jobs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ai_vision_stream_jobs_agent_participant_id" {
  description = "Map of agent_participant_id values across all ai_vision_stream_jobs, keyed the same as var.ai_vision_stream_jobs except keys with no agent_participant_id are omitted"
  value       = { for k, v in oci_ai_vision_stream_job.ai_vision_stream_jobs : k => v.agent_participant_id if v.agent_participant_id != null && length(v.agent_participant_id) > 0 }
}
output "ai_vision_stream_jobs_compartment_id" {
  description = "Map of compartment_id values across all ai_vision_stream_jobs, keyed the same as var.ai_vision_stream_jobs except keys with no compartment_id are omitted"
  value       = { for k, v in oci_ai_vision_stream_job.ai_vision_stream_jobs : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "ai_vision_stream_jobs_defined_tags" {
  description = "Map of defined_tags values across all ai_vision_stream_jobs, keyed the same as var.ai_vision_stream_jobs except keys with no defined_tags are omitted"
  value       = { for k, v in oci_ai_vision_stream_job.ai_vision_stream_jobs : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "ai_vision_stream_jobs_display_name" {
  description = "Map of display_name values across all ai_vision_stream_jobs, keyed the same as var.ai_vision_stream_jobs except keys with no display_name are omitted"
  value       = { for k, v in oci_ai_vision_stream_job.ai_vision_stream_jobs : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "ai_vision_stream_jobs_features" {
  description = "Map of features values across all ai_vision_stream_jobs, keyed the same as var.ai_vision_stream_jobs except keys with no features are omitted"
  value       = { for k, v in oci_ai_vision_stream_job.ai_vision_stream_jobs : k => v.features if v.features != null && length(v.features) > 0 }
}
output "ai_vision_stream_jobs_freeform_tags" {
  description = "Map of freeform_tags values across all ai_vision_stream_jobs, keyed the same as var.ai_vision_stream_jobs except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_ai_vision_stream_job.ai_vision_stream_jobs : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "ai_vision_stream_jobs_lifecycle_details" {
  description = "Map of lifecycle_details values across all ai_vision_stream_jobs, keyed the same as var.ai_vision_stream_jobs except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_ai_vision_stream_job.ai_vision_stream_jobs : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "ai_vision_stream_jobs_state" {
  description = "Map of state values across all ai_vision_stream_jobs, keyed the same as var.ai_vision_stream_jobs except keys with no state are omitted"
  value       = { for k, v in oci_ai_vision_stream_job.ai_vision_stream_jobs : k => v.state if v.state != null && length(v.state) > 0 }
}
output "ai_vision_stream_jobs_stream_output_location" {
  description = "Map of stream_output_location values across all ai_vision_stream_jobs, keyed the same as var.ai_vision_stream_jobs except keys with no stream_output_location are omitted"
  value       = { for k, v in oci_ai_vision_stream_job.ai_vision_stream_jobs : k => one(v.stream_output_location) if v.stream_output_location != null && length(v.stream_output_location) > 0 }
}
output "ai_vision_stream_jobs_stream_source_id" {
  description = "Map of stream_source_id values across all ai_vision_stream_jobs, keyed the same as var.ai_vision_stream_jobs except keys with no stream_source_id are omitted"
  value       = { for k, v in oci_ai_vision_stream_job.ai_vision_stream_jobs : k => v.stream_source_id if v.stream_source_id != null && length(v.stream_source_id) > 0 }
}
output "ai_vision_stream_jobs_system_tags" {
  description = "Map of system_tags values across all ai_vision_stream_jobs, keyed the same as var.ai_vision_stream_jobs except keys with no system_tags are omitted"
  value       = { for k, v in oci_ai_vision_stream_job.ai_vision_stream_jobs : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "ai_vision_stream_jobs_time_created" {
  description = "Map of time_created values across all ai_vision_stream_jobs, keyed the same as var.ai_vision_stream_jobs except keys with no time_created are omitted"
  value       = { for k, v in oci_ai_vision_stream_job.ai_vision_stream_jobs : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "ai_vision_stream_jobs_time_updated" {
  description = "Map of time_updated values across all ai_vision_stream_jobs, keyed the same as var.ai_vision_stream_jobs except keys with no time_updated are omitted"
  value       = { for k, v in oci_ai_vision_stream_job.ai_vision_stream_jobs : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}


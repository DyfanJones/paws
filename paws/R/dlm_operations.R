# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include dlm_service.R
NULL

#' Creates an Amazon Data Lifecycle Manager lifecycle policy
#'
#' @description
#' Creates an Amazon Data Lifecycle Manager lifecycle policy. Amazon Data
#' Lifecycle Manager supports the following policy types:
#' 
#' -   Custom EBS snapshot policy
#' 
#' -   Custom EBS-backed AMI policy
#' 
#' -   Cross-account copy event policy
#' 
#' -   Default policy for EBS snapshots
#' 
#' -   Default policy for EBS-backed AMIs
#' 
#' For more information, see [Default policies vs custom
#' policies](https://docs.aws.amazon.com/ebs/latest/userguide/policy-differences.html).
#' 
#' If you create a default policy, you can specify the request parameters
#' either in the request body, or in the PolicyDetails request structure,
#' but not both.
#'
#' @usage
#' dlm_create_lifecycle_policy(ExecutionRoleArn, Description, State,
#'   PolicyDetails, Tags, DefaultPolicy, CreateInterval, RetainInterval,
#'   CopyTags, ExtendDeletion, CrossRegionCopyTargets, Exclusions)
#'
#' @param ExecutionRoleArn &#91;required&#93; The Amazon Resource Name (ARN) of the IAM role used to run the
#' operations specified by the lifecycle policy.
#' @param Description &#91;required&#93; A description of the lifecycle policy. The characters ^\[0-9A-Za-z
#' _-\]+$ are supported.
#' @param State &#91;required&#93; The activation state of the lifecycle policy after creation.
#' @param PolicyDetails The configuration details of the lifecycle policy.
#' 
#' If you create a default policy, you can specify the request parameters
#' either in the request body, or in the PolicyDetails request structure,
#' but not both.
#' @param Tags The tags to apply to the lifecycle policy during creation.
#' @param DefaultPolicy **\[Default policies only\]** Specify the type of default policy to
#' create.
#' 
#' -   To create a default policy for EBS snapshots, that creates snapshots
#'     of all volumes in the Region that do not have recent backups,
#'     specify `VOLUME`.
#' 
#' -   To create a default policy for EBS-backed AMIs, that creates
#'     EBS-backed AMIs from all instances in the Region that do not have
#'     recent backups, specify `INSTANCE`.
#' @param CreateInterval **\[Default policies only\]** Specifies how often the policy should run
#' and create snapshots or AMIs. The creation frequency can range from 1 to
#' 7 days. If you do not specify a value, the default is 1.
#' 
#' Default: 1
#' @param RetainInterval **\[Default policies only\]** Specifies how long the policy should
#' retain snapshots or AMIs before deleting them. The retention period can
#' range from 2 to 14 days, but it must be greater than the creation
#' frequency to ensure that the policy retains at least 1 snapshot or AMI
#' at any given time. If you do not specify a value, the default is 7.
#' 
#' Default: 7
#' @param CopyTags **\[Default policies only\]** Indicates whether the policy should copy
#' tags from the source resource to the snapshot or AMI. If you do not
#' specify a value, the default is `false`.
#' 
#' Default: false
#' @param ExtendDeletion **\[Default policies only\]** Defines the snapshot or AMI retention
#' behavior for the policy if the source volume or instance is deleted, or
#' if the policy enters the error, disabled, or deleted state.
#' 
#' By default (**ExtendDeletion=false**):
#' 
#' -   If a source resource is deleted, Amazon Data Lifecycle Manager will
#'     continue to delete previously created snapshots or AMIs, up to but
#'     not including the last one, based on the specified retention period.
#'     If you want Amazon Data Lifecycle Manager to delete all snapshots or
#'     AMIs, including the last one, specify `true`.
#' 
#' -   If a policy enters the error, disabled, or deleted state, Amazon
#'     Data Lifecycle Manager stops deleting snapshots and AMIs. If you
#'     want Amazon Data Lifecycle Manager to continue deleting snapshots or
#'     AMIs, including the last one, if the policy enters one of these
#'     states, specify `true`.
#' 
#' If you enable extended deletion (**ExtendDeletion=true**), you override
#' both default behaviors simultaneously.
#' 
#' If you do not specify a value, the default is `false`.
#' 
#' Default: false
#' @param CrossRegionCopyTargets **\[Default policies only\]** Specifies destination Regions for snapshot
#' or AMI copies. You can specify up to 3 destination Regions. If you do
#' not want to create cross-Region copies, omit this parameter.
#' @param Exclusions **\[Default policies only\]** Specifies exclusion parameters for volumes
#' or instances for which you do not want to create snapshots or AMIs. The
#' policy will not create snapshots or AMIs for target resources that match
#' any of the specified exclusion parameters.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   PolicyId = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$create_lifecycle_policy(
#'   ExecutionRoleArn = "string",
#'   Description = "string",
#'   State = "ENABLED"|"DISABLED",
#'   PolicyDetails = list(
#'     PolicyType = "EBS_SNAPSHOT_MANAGEMENT"|"IMAGE_MANAGEMENT"|"EVENT_BASED_POLICY",
#'     ResourceTypes = list(
#'       "VOLUME"|"INSTANCE"
#'     ),
#'     ResourceLocations = list(
#'       "CLOUD"|"OUTPOST"|"LOCAL_ZONE"
#'     ),
#'     TargetTags = list(
#'       list(
#'         Key = "string",
#'         Value = "string"
#'       )
#'     ),
#'     Schedules = list(
#'       list(
#'         Name = "string",
#'         CopyTags = TRUE|FALSE,
#'         TagsToAdd = list(
#'           list(
#'             Key = "string",
#'             Value = "string"
#'           )
#'         ),
#'         VariableTags = list(
#'           list(
#'             Key = "string",
#'             Value = "string"
#'           )
#'         ),
#'         CreateRule = list(
#'           Location = "CLOUD"|"OUTPOST_LOCAL"|"LOCAL_ZONE",
#'           Interval = 123,
#'           IntervalUnit = "HOURS",
#'           Times = list(
#'             "string"
#'           ),
#'           CronExpression = "string",
#'           Scripts = list(
#'             list(
#'               Stages = list(
#'                 "PRE"|"POST"
#'               ),
#'               ExecutionHandlerService = "AWS_SYSTEMS_MANAGER",
#'               ExecutionHandler = "string",
#'               ExecuteOperationOnScriptFailure = TRUE|FALSE,
#'               ExecutionTimeout = 123,
#'               MaximumRetryCount = 123
#'             )
#'           )
#'         ),
#'         RetainRule = list(
#'           Count = 123,
#'           Interval = 123,
#'           IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
#'         ),
#'         FastRestoreRule = list(
#'           Count = 123,
#'           Interval = 123,
#'           IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS",
#'           AvailabilityZones = list(
#'             "string"
#'           )
#'         ),
#'         CrossRegionCopyRules = list(
#'           list(
#'             TargetRegion = "string",
#'             Target = "string",
#'             Encrypted = TRUE|FALSE,
#'             CmkArn = "string",
#'             CopyTags = TRUE|FALSE,
#'             RetainRule = list(
#'               Interval = 123,
#'               IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
#'             ),
#'             DeprecateRule = list(
#'               Interval = 123,
#'               IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
#'             )
#'           )
#'         ),
#'         ShareRules = list(
#'           list(
#'             TargetAccounts = list(
#'               "string"
#'             ),
#'             UnshareInterval = 123,
#'             UnshareIntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
#'           )
#'         ),
#'         DeprecateRule = list(
#'           Count = 123,
#'           Interval = 123,
#'           IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
#'         ),
#'         ArchiveRule = list(
#'           RetainRule = list(
#'             RetentionArchiveTier = list(
#'               Count = 123,
#'               Interval = 123,
#'               IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
#'             )
#'           )
#'         )
#'       )
#'     ),
#'     Parameters = list(
#'       ExcludeBootVolume = TRUE|FALSE,
#'       NoReboot = TRUE|FALSE,
#'       ExcludeDataVolumeTags = list(
#'         list(
#'           Key = "string",
#'           Value = "string"
#'         )
#'       )
#'     ),
#'     EventSource = list(
#'       Type = "MANAGED_CWE",
#'       Parameters = list(
#'         EventType = "shareSnapshot",
#'         SnapshotOwner = list(
#'           "string"
#'         ),
#'         DescriptionRegex = "string"
#'       )
#'     ),
#'     Actions = list(
#'       list(
#'         Name = "string",
#'         CrossRegionCopy = list(
#'           list(
#'             Target = "string",
#'             EncryptionConfiguration = list(
#'               Encrypted = TRUE|FALSE,
#'               CmkArn = "string"
#'             ),
#'             RetainRule = list(
#'               Interval = 123,
#'               IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
#'             )
#'           )
#'         )
#'       )
#'     ),
#'     PolicyLanguage = "SIMPLIFIED"|"STANDARD",
#'     ResourceType = "VOLUME"|"INSTANCE",
#'     CreateInterval = 123,
#'     RetainInterval = 123,
#'     CopyTags = TRUE|FALSE,
#'     CrossRegionCopyTargets = list(
#'       list(
#'         TargetRegion = "string"
#'       )
#'     ),
#'     ExtendDeletion = TRUE|FALSE,
#'     Exclusions = list(
#'       ExcludeBootVolumes = TRUE|FALSE,
#'       ExcludeVolumeTypes = list(
#'         "string"
#'       ),
#'       ExcludeTags = list(
#'         list(
#'           Key = "string",
#'           Value = "string"
#'         )
#'       )
#'     )
#'   ),
#'   Tags = list(
#'     "string"
#'   ),
#'   DefaultPolicy = "VOLUME"|"INSTANCE",
#'   CreateInterval = 123,
#'   RetainInterval = 123,
#'   CopyTags = TRUE|FALSE,
#'   ExtendDeletion = TRUE|FALSE,
#'   CrossRegionCopyTargets = list(
#'     list(
#'       TargetRegion = "string"
#'     )
#'   ),
#'   Exclusions = list(
#'     ExcludeBootVolumes = TRUE|FALSE,
#'     ExcludeVolumeTypes = list(
#'       "string"
#'     ),
#'     ExcludeTags = list(
#'       list(
#'         Key = "string",
#'         Value = "string"
#'       )
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname dlm_create_lifecycle_policy
#'
#' @aliases dlm_create_lifecycle_policy
dlm_create_lifecycle_policy <- function(ExecutionRoleArn, Description, State, PolicyDetails = NULL, Tags = NULL, DefaultPolicy = NULL, CreateInterval = NULL, RetainInterval = NULL, CopyTags = NULL, ExtendDeletion = NULL, CrossRegionCopyTargets = NULL, Exclusions = NULL) {
  op <- new_operation(
    name = "CreateLifecyclePolicy",
    http_method = "POST",
    http_path = "/policies",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .dlm$create_lifecycle_policy_input(ExecutionRoleArn = ExecutionRoleArn, Description = Description, State = State, PolicyDetails = PolicyDetails, Tags = Tags, DefaultPolicy = DefaultPolicy, CreateInterval = CreateInterval, RetainInterval = RetainInterval, CopyTags = CopyTags, ExtendDeletion = ExtendDeletion, CrossRegionCopyTargets = CrossRegionCopyTargets, Exclusions = Exclusions)
  output <- .dlm$create_lifecycle_policy_output()
  config <- get_config()
  svc <- .dlm$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.dlm$operations$create_lifecycle_policy <- dlm_create_lifecycle_policy

#' Deletes the specified lifecycle policy and halts the automated
#' operations that the policy specified
#'
#' @description
#' Deletes the specified lifecycle policy and halts the automated
#' operations that the policy specified.
#' 
#' For more information about deleting a policy, see [Delete lifecycle
#' policies](https://docs.aws.amazon.com/ebs/latest/userguide/delete.html#delete).
#'
#' @usage
#' dlm_delete_lifecycle_policy(PolicyId)
#'
#' @param PolicyId &#91;required&#93; The identifier of the lifecycle policy.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$delete_lifecycle_policy(
#'   PolicyId = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname dlm_delete_lifecycle_policy
#'
#' @aliases dlm_delete_lifecycle_policy
dlm_delete_lifecycle_policy <- function(PolicyId) {
  op <- new_operation(
    name = "DeleteLifecyclePolicy",
    http_method = "DELETE",
    http_path = "/policies/{policyId}",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .dlm$delete_lifecycle_policy_input(PolicyId = PolicyId)
  output <- .dlm$delete_lifecycle_policy_output()
  config <- get_config()
  svc <- .dlm$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.dlm$operations$delete_lifecycle_policy <- dlm_delete_lifecycle_policy

#' Gets summary information about all or the specified data lifecycle
#' policies
#'
#' @description
#' Gets summary information about all or the specified data lifecycle
#' policies.
#' 
#' To get complete information about a policy, use
#' [`get_lifecycle_policy`][dlm_get_lifecycle_policy].
#'
#' @usage
#' dlm_get_lifecycle_policies(PolicyIds, State, ResourceTypes, TargetTags,
#'   TagsToAdd, DefaultPolicyType)
#'
#' @param PolicyIds The identifiers of the data lifecycle policies.
#' @param State The activation state.
#' @param ResourceTypes The resource type.
#' @param TargetTags The target tag for a policy.
#' 
#' Tags are strings in the format `key=value`.
#' @param TagsToAdd The tags to add to objects created by the policy.
#' 
#' Tags are strings in the format `key=value`.
#' 
#' These user-defined tags are added in addition to the Amazon Web
#' Services-added lifecycle tags.
#' @param DefaultPolicyType **\[Default policies only\]** Specifies the type of default policy to
#' get. Specify one of the following:
#' 
#' -   `VOLUME` - To get only the default policy for EBS snapshots
#' 
#' -   `INSTANCE` - To get only the default policy for EBS-backed AMIs
#' 
#' -   `ALL` - To get all default policies
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Policies = list(
#'     list(
#'       PolicyId = "string",
#'       Description = "string",
#'       State = "ENABLED"|"DISABLED"|"ERROR",
#'       Tags = list(
#'         "string"
#'       ),
#'       PolicyType = "EBS_SNAPSHOT_MANAGEMENT"|"IMAGE_MANAGEMENT"|"EVENT_BASED_POLICY",
#'       DefaultPolicy = TRUE|FALSE
#'     )
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$get_lifecycle_policies(
#'   PolicyIds = list(
#'     "string"
#'   ),
#'   State = "ENABLED"|"DISABLED"|"ERROR",
#'   ResourceTypes = list(
#'     "VOLUME"|"INSTANCE"
#'   ),
#'   TargetTags = list(
#'     "string"
#'   ),
#'   TagsToAdd = list(
#'     "string"
#'   ),
#'   DefaultPolicyType = "VOLUME"|"INSTANCE"|"ALL"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname dlm_get_lifecycle_policies
#'
#' @aliases dlm_get_lifecycle_policies
dlm_get_lifecycle_policies <- function(PolicyIds = NULL, State = NULL, ResourceTypes = NULL, TargetTags = NULL, TagsToAdd = NULL, DefaultPolicyType = NULL) {
  op <- new_operation(
    name = "GetLifecyclePolicies",
    http_method = "GET",
    http_path = "/policies",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .dlm$get_lifecycle_policies_input(PolicyIds = PolicyIds, State = State, ResourceTypes = ResourceTypes, TargetTags = TargetTags, TagsToAdd = TagsToAdd, DefaultPolicyType = DefaultPolicyType)
  output <- .dlm$get_lifecycle_policies_output()
  config <- get_config()
  svc <- .dlm$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.dlm$operations$get_lifecycle_policies <- dlm_get_lifecycle_policies

#' Gets detailed information about the specified lifecycle policy
#'
#' @description
#' Gets detailed information about the specified lifecycle policy.
#'
#' @usage
#' dlm_get_lifecycle_policy(PolicyId)
#'
#' @param PolicyId &#91;required&#93; The identifier of the lifecycle policy.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Policy = list(
#'     PolicyId = "string",
#'     Description = "string",
#'     State = "ENABLED"|"DISABLED"|"ERROR",
#'     StatusMessage = "string",
#'     ExecutionRoleArn = "string",
#'     DateCreated = as.POSIXct(
#'       "2015-01-01"
#'     ),
#'     DateModified = as.POSIXct(
#'       "2015-01-01"
#'     ),
#'     PolicyDetails = list(
#'       PolicyType = "EBS_SNAPSHOT_MANAGEMENT"|"IMAGE_MANAGEMENT"|"EVENT_BASED_POLICY",
#'       ResourceTypes = list(
#'         "VOLUME"|"INSTANCE"
#'       ),
#'       ResourceLocations = list(
#'         "CLOUD"|"OUTPOST"|"LOCAL_ZONE"
#'       ),
#'       TargetTags = list(
#'         list(
#'           Key = "string",
#'           Value = "string"
#'         )
#'       ),
#'       Schedules = list(
#'         list(
#'           Name = "string",
#'           CopyTags = TRUE|FALSE,
#'           TagsToAdd = list(
#'             list(
#'               Key = "string",
#'               Value = "string"
#'             )
#'           ),
#'           VariableTags = list(
#'             list(
#'               Key = "string",
#'               Value = "string"
#'             )
#'           ),
#'           CreateRule = list(
#'             Location = "CLOUD"|"OUTPOST_LOCAL"|"LOCAL_ZONE",
#'             Interval = 123,
#'             IntervalUnit = "HOURS",
#'             Times = list(
#'               "string"
#'             ),
#'             CronExpression = "string",
#'             Scripts = list(
#'               list(
#'                 Stages = list(
#'                   "PRE"|"POST"
#'                 ),
#'                 ExecutionHandlerService = "AWS_SYSTEMS_MANAGER",
#'                 ExecutionHandler = "string",
#'                 ExecuteOperationOnScriptFailure = TRUE|FALSE,
#'                 ExecutionTimeout = 123,
#'                 MaximumRetryCount = 123
#'               )
#'             )
#'           ),
#'           RetainRule = list(
#'             Count = 123,
#'             Interval = 123,
#'             IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
#'           ),
#'           FastRestoreRule = list(
#'             Count = 123,
#'             Interval = 123,
#'             IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS",
#'             AvailabilityZones = list(
#'               "string"
#'             )
#'           ),
#'           CrossRegionCopyRules = list(
#'             list(
#'               TargetRegion = "string",
#'               Target = "string",
#'               Encrypted = TRUE|FALSE,
#'               CmkArn = "string",
#'               CopyTags = TRUE|FALSE,
#'               RetainRule = list(
#'                 Interval = 123,
#'                 IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
#'               ),
#'               DeprecateRule = list(
#'                 Interval = 123,
#'                 IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
#'               )
#'             )
#'           ),
#'           ShareRules = list(
#'             list(
#'               TargetAccounts = list(
#'                 "string"
#'               ),
#'               UnshareInterval = 123,
#'               UnshareIntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
#'             )
#'           ),
#'           DeprecateRule = list(
#'             Count = 123,
#'             Interval = 123,
#'             IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
#'           ),
#'           ArchiveRule = list(
#'             RetainRule = list(
#'               RetentionArchiveTier = list(
#'                 Count = 123,
#'                 Interval = 123,
#'                 IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
#'               )
#'             )
#'           )
#'         )
#'       ),
#'       Parameters = list(
#'         ExcludeBootVolume = TRUE|FALSE,
#'         NoReboot = TRUE|FALSE,
#'         ExcludeDataVolumeTags = list(
#'           list(
#'             Key = "string",
#'             Value = "string"
#'           )
#'         )
#'       ),
#'       EventSource = list(
#'         Type = "MANAGED_CWE",
#'         Parameters = list(
#'           EventType = "shareSnapshot",
#'           SnapshotOwner = list(
#'             "string"
#'           ),
#'           DescriptionRegex = "string"
#'         )
#'       ),
#'       Actions = list(
#'         list(
#'           Name = "string",
#'           CrossRegionCopy = list(
#'             list(
#'               Target = "string",
#'               EncryptionConfiguration = list(
#'                 Encrypted = TRUE|FALSE,
#'                 CmkArn = "string"
#'               ),
#'               RetainRule = list(
#'                 Interval = 123,
#'                 IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
#'               )
#'             )
#'           )
#'         )
#'       ),
#'       PolicyLanguage = "SIMPLIFIED"|"STANDARD",
#'       ResourceType = "VOLUME"|"INSTANCE",
#'       CreateInterval = 123,
#'       RetainInterval = 123,
#'       CopyTags = TRUE|FALSE,
#'       CrossRegionCopyTargets = list(
#'         list(
#'           TargetRegion = "string"
#'         )
#'       ),
#'       ExtendDeletion = TRUE|FALSE,
#'       Exclusions = list(
#'         ExcludeBootVolumes = TRUE|FALSE,
#'         ExcludeVolumeTypes = list(
#'           "string"
#'         ),
#'         ExcludeTags = list(
#'           list(
#'             Key = "string",
#'             Value = "string"
#'           )
#'         )
#'       )
#'     ),
#'     Tags = list(
#'       "string"
#'     ),
#'     PolicyArn = "string",
#'     DefaultPolicy = TRUE|FALSE
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$get_lifecycle_policy(
#'   PolicyId = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname dlm_get_lifecycle_policy
#'
#' @aliases dlm_get_lifecycle_policy
dlm_get_lifecycle_policy <- function(PolicyId) {
  op <- new_operation(
    name = "GetLifecyclePolicy",
    http_method = "GET",
    http_path = "/policies/{policyId}",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .dlm$get_lifecycle_policy_input(PolicyId = PolicyId)
  output <- .dlm$get_lifecycle_policy_output()
  config <- get_config()
  svc <- .dlm$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.dlm$operations$get_lifecycle_policy <- dlm_get_lifecycle_policy

#' Lists the tags for the specified resource
#'
#' @description
#' Lists the tags for the specified resource.
#'
#' @usage
#' dlm_list_tags_for_resource(ResourceArn)
#'
#' @param ResourceArn &#91;required&#93; The Amazon Resource Name (ARN) of the resource.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Tags = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_tags_for_resource(
#'   ResourceArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname dlm_list_tags_for_resource
#'
#' @aliases dlm_list_tags_for_resource
dlm_list_tags_for_resource <- function(ResourceArn) {
  op <- new_operation(
    name = "ListTagsForResource",
    http_method = "GET",
    http_path = "/tags/{resourceArn}",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .dlm$list_tags_for_resource_input(ResourceArn = ResourceArn)
  output <- .dlm$list_tags_for_resource_output()
  config <- get_config()
  svc <- .dlm$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.dlm$operations$list_tags_for_resource <- dlm_list_tags_for_resource

#' Adds the specified tags to the specified resource
#'
#' @description
#' Adds the specified tags to the specified resource.
#'
#' @usage
#' dlm_tag_resource(ResourceArn, Tags)
#'
#' @param ResourceArn &#91;required&#93; The Amazon Resource Name (ARN) of the resource.
#' @param Tags &#91;required&#93; One or more tags.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$tag_resource(
#'   ResourceArn = "string",
#'   Tags = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname dlm_tag_resource
#'
#' @aliases dlm_tag_resource
dlm_tag_resource <- function(ResourceArn, Tags) {
  op <- new_operation(
    name = "TagResource",
    http_method = "POST",
    http_path = "/tags/{resourceArn}",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .dlm$tag_resource_input(ResourceArn = ResourceArn, Tags = Tags)
  output <- .dlm$tag_resource_output()
  config <- get_config()
  svc <- .dlm$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.dlm$operations$tag_resource <- dlm_tag_resource

#' Removes the specified tags from the specified resource
#'
#' @description
#' Removes the specified tags from the specified resource.
#'
#' @usage
#' dlm_untag_resource(ResourceArn, TagKeys)
#'
#' @param ResourceArn &#91;required&#93; The Amazon Resource Name (ARN) of the resource.
#' @param TagKeys &#91;required&#93; The tag keys.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$untag_resource(
#'   ResourceArn = "string",
#'   TagKeys = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname dlm_untag_resource
#'
#' @aliases dlm_untag_resource
dlm_untag_resource <- function(ResourceArn, TagKeys) {
  op <- new_operation(
    name = "UntagResource",
    http_method = "DELETE",
    http_path = "/tags/{resourceArn}",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .dlm$untag_resource_input(ResourceArn = ResourceArn, TagKeys = TagKeys)
  output <- .dlm$untag_resource_output()
  config <- get_config()
  svc <- .dlm$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.dlm$operations$untag_resource <- dlm_untag_resource

#' Updates the specified lifecycle policy
#'
#' @description
#' Updates the specified lifecycle policy.
#' 
#' For more information about updating a policy, see [Modify lifecycle
#' policies](https://docs.aws.amazon.com/ebs/latest/userguide/delete.html#modify).
#'
#' @usage
#' dlm_update_lifecycle_policy(PolicyId, ExecutionRoleArn, State,
#'   Description, PolicyDetails, CreateInterval, RetainInterval, CopyTags,
#'   ExtendDeletion, CrossRegionCopyTargets, Exclusions)
#'
#' @param PolicyId &#91;required&#93; The identifier of the lifecycle policy.
#' @param ExecutionRoleArn The Amazon Resource Name (ARN) of the IAM role used to run the
#' operations specified by the lifecycle policy.
#' @param State The desired activation state of the lifecycle policy after creation.
#' @param Description A description of the lifecycle policy.
#' @param PolicyDetails The configuration of the lifecycle policy. You cannot update the policy
#' type or the resource type.
#' @param CreateInterval **\[Default policies only\]** Specifies how often the policy should run
#' and create snapshots or AMIs. The creation frequency can range from 1 to
#' 7 days.
#' @param RetainInterval **\[Default policies only\]** Specifies how long the policy should
#' retain snapshots or AMIs before deleting them. The retention period can
#' range from 2 to 14 days, but it must be greater than the creation
#' frequency to ensure that the policy retains at least 1 snapshot or AMI
#' at any given time.
#' @param CopyTags **\[Default policies only\]** Indicates whether the policy should copy
#' tags from the source resource to the snapshot or AMI.
#' @param ExtendDeletion **\[Default policies only\]** Defines the snapshot or AMI retention
#' behavior for the policy if the source volume or instance is deleted, or
#' if the policy enters the error, disabled, or deleted state.
#' 
#' By default (**ExtendDeletion=false**):
#' 
#' -   If a source resource is deleted, Amazon Data Lifecycle Manager will
#'     continue to delete previously created snapshots or AMIs, up to but
#'     not including the last one, based on the specified retention period.
#'     If you want Amazon Data Lifecycle Manager to delete all snapshots or
#'     AMIs, including the last one, specify `true`.
#' 
#' -   If a policy enters the error, disabled, or deleted state, Amazon
#'     Data Lifecycle Manager stops deleting snapshots and AMIs. If you
#'     want Amazon Data Lifecycle Manager to continue deleting snapshots or
#'     AMIs, including the last one, if the policy enters one of these
#'     states, specify `true`.
#' 
#' If you enable extended deletion (**ExtendDeletion=true**), you override
#' both default behaviors simultaneously.
#' 
#' Default: false
#' @param CrossRegionCopyTargets **\[Default policies only\]** Specifies destination Regions for snapshot
#' or AMI copies. You can specify up to 3 destination Regions. If you do
#' not want to create cross-Region copies, omit this parameter.
#' @param Exclusions **\[Default policies only\]** Specifies exclusion parameters for volumes
#' or instances for which you do not want to create snapshots or AMIs. The
#' policy will not create snapshots or AMIs for target resources that match
#' any of the specified exclusion parameters.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$update_lifecycle_policy(
#'   PolicyId = "string",
#'   ExecutionRoleArn = "string",
#'   State = "ENABLED"|"DISABLED",
#'   Description = "string",
#'   PolicyDetails = list(
#'     PolicyType = "EBS_SNAPSHOT_MANAGEMENT"|"IMAGE_MANAGEMENT"|"EVENT_BASED_POLICY",
#'     ResourceTypes = list(
#'       "VOLUME"|"INSTANCE"
#'     ),
#'     ResourceLocations = list(
#'       "CLOUD"|"OUTPOST"|"LOCAL_ZONE"
#'     ),
#'     TargetTags = list(
#'       list(
#'         Key = "string",
#'         Value = "string"
#'       )
#'     ),
#'     Schedules = list(
#'       list(
#'         Name = "string",
#'         CopyTags = TRUE|FALSE,
#'         TagsToAdd = list(
#'           list(
#'             Key = "string",
#'             Value = "string"
#'           )
#'         ),
#'         VariableTags = list(
#'           list(
#'             Key = "string",
#'             Value = "string"
#'           )
#'         ),
#'         CreateRule = list(
#'           Location = "CLOUD"|"OUTPOST_LOCAL"|"LOCAL_ZONE",
#'           Interval = 123,
#'           IntervalUnit = "HOURS",
#'           Times = list(
#'             "string"
#'           ),
#'           CronExpression = "string",
#'           Scripts = list(
#'             list(
#'               Stages = list(
#'                 "PRE"|"POST"
#'               ),
#'               ExecutionHandlerService = "AWS_SYSTEMS_MANAGER",
#'               ExecutionHandler = "string",
#'               ExecuteOperationOnScriptFailure = TRUE|FALSE,
#'               ExecutionTimeout = 123,
#'               MaximumRetryCount = 123
#'             )
#'           )
#'         ),
#'         RetainRule = list(
#'           Count = 123,
#'           Interval = 123,
#'           IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
#'         ),
#'         FastRestoreRule = list(
#'           Count = 123,
#'           Interval = 123,
#'           IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS",
#'           AvailabilityZones = list(
#'             "string"
#'           )
#'         ),
#'         CrossRegionCopyRules = list(
#'           list(
#'             TargetRegion = "string",
#'             Target = "string",
#'             Encrypted = TRUE|FALSE,
#'             CmkArn = "string",
#'             CopyTags = TRUE|FALSE,
#'             RetainRule = list(
#'               Interval = 123,
#'               IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
#'             ),
#'             DeprecateRule = list(
#'               Interval = 123,
#'               IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
#'             )
#'           )
#'         ),
#'         ShareRules = list(
#'           list(
#'             TargetAccounts = list(
#'               "string"
#'             ),
#'             UnshareInterval = 123,
#'             UnshareIntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
#'           )
#'         ),
#'         DeprecateRule = list(
#'           Count = 123,
#'           Interval = 123,
#'           IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
#'         ),
#'         ArchiveRule = list(
#'           RetainRule = list(
#'             RetentionArchiveTier = list(
#'               Count = 123,
#'               Interval = 123,
#'               IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
#'             )
#'           )
#'         )
#'       )
#'     ),
#'     Parameters = list(
#'       ExcludeBootVolume = TRUE|FALSE,
#'       NoReboot = TRUE|FALSE,
#'       ExcludeDataVolumeTags = list(
#'         list(
#'           Key = "string",
#'           Value = "string"
#'         )
#'       )
#'     ),
#'     EventSource = list(
#'       Type = "MANAGED_CWE",
#'       Parameters = list(
#'         EventType = "shareSnapshot",
#'         SnapshotOwner = list(
#'           "string"
#'         ),
#'         DescriptionRegex = "string"
#'       )
#'     ),
#'     Actions = list(
#'       list(
#'         Name = "string",
#'         CrossRegionCopy = list(
#'           list(
#'             Target = "string",
#'             EncryptionConfiguration = list(
#'               Encrypted = TRUE|FALSE,
#'               CmkArn = "string"
#'             ),
#'             RetainRule = list(
#'               Interval = 123,
#'               IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
#'             )
#'           )
#'         )
#'       )
#'     ),
#'     PolicyLanguage = "SIMPLIFIED"|"STANDARD",
#'     ResourceType = "VOLUME"|"INSTANCE",
#'     CreateInterval = 123,
#'     RetainInterval = 123,
#'     CopyTags = TRUE|FALSE,
#'     CrossRegionCopyTargets = list(
#'       list(
#'         TargetRegion = "string"
#'       )
#'     ),
#'     ExtendDeletion = TRUE|FALSE,
#'     Exclusions = list(
#'       ExcludeBootVolumes = TRUE|FALSE,
#'       ExcludeVolumeTypes = list(
#'         "string"
#'       ),
#'       ExcludeTags = list(
#'         list(
#'           Key = "string",
#'           Value = "string"
#'         )
#'       )
#'     )
#'   ),
#'   CreateInterval = 123,
#'   RetainInterval = 123,
#'   CopyTags = TRUE|FALSE,
#'   ExtendDeletion = TRUE|FALSE,
#'   CrossRegionCopyTargets = list(
#'     list(
#'       TargetRegion = "string"
#'     )
#'   ),
#'   Exclusions = list(
#'     ExcludeBootVolumes = TRUE|FALSE,
#'     ExcludeVolumeTypes = list(
#'       "string"
#'     ),
#'     ExcludeTags = list(
#'       list(
#'         Key = "string",
#'         Value = "string"
#'       )
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname dlm_update_lifecycle_policy
#'
#' @aliases dlm_update_lifecycle_policy
dlm_update_lifecycle_policy <- function(PolicyId, ExecutionRoleArn = NULL, State = NULL, Description = NULL, PolicyDetails = NULL, CreateInterval = NULL, RetainInterval = NULL, CopyTags = NULL, ExtendDeletion = NULL, CrossRegionCopyTargets = NULL, Exclusions = NULL) {
  op <- new_operation(
    name = "UpdateLifecyclePolicy",
    http_method = "PATCH",
    http_path = "/policies/{policyId}",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .dlm$update_lifecycle_policy_input(PolicyId = PolicyId, ExecutionRoleArn = ExecutionRoleArn, State = State, Description = Description, PolicyDetails = PolicyDetails, CreateInterval = CreateInterval, RetainInterval = RetainInterval, CopyTags = CopyTags, ExtendDeletion = ExtendDeletion, CrossRegionCopyTargets = CrossRegionCopyTargets, Exclusions = Exclusions)
  output <- .dlm$update_lifecycle_policy_output()
  config <- get_config()
  svc <- .dlm$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.dlm$operations$update_lifecycle_policy <- dlm_update_lifecycle_policy

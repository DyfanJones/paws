% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codepipeline_service.R
\name{codepipeline}
\alias{codepipeline}
\title{AWS CodePipeline}
\usage{
codepipeline()
}
\description{
\strong{Overview}

This is the AWS CodePipeline API Reference. This guide provides
descriptions of the actions and data types for AWS CodePipeline. Some
functionality for your pipeline is only configurable through the API.
For additional information, see the \href{https://docs.aws.amazon.com/codepipeline/latest/userguide/welcome.html}{AWS CodePipeline User Guide}.

You can use the AWS CodePipeline API to work with pipelines, stages,
actions, and transitions, as described below.

\emph{Pipelines} are models of automated release processes. Each pipeline is
uniquely named, and consists of stages, actions, and transitions.

You can work with pipelines by calling:
\itemize{
\item CreatePipeline, which creates a uniquely-named pipeline.
\item DeletePipeline, which deletes the specified pipeline.
\item GetPipeline, which returns information about the pipeline structure
and pipeline metadata, including the pipeline Amazon Resource Name
(ARN).
\item GetPipelineExecution, which returns information about a specific
execution of a pipeline.
\item GetPipelineState, which returns information about the current state
of the stages and actions of a pipeline.
\item ListPipelines, which gets a summary of all of the pipelines
associated with your account.
\item ListPipelineExecutions, which gets a summary of the most recent
executions for a pipeline.
\item StartPipelineExecution, which runs the the most recent revision of
an artifact through the pipeline.
\item UpdatePipeline, which updates a pipeline with edits or changes to
the structure of the pipeline.
}

Pipelines include \emph{stages}. Each stage contains one or more actions that
must complete before the next stage begins. A stage will result in
success or failure. If a stage fails, then the pipeline stops at that
stage and will remain stopped until either a new version of an artifact
appears in the source location, or a user takes action to re-run the
most recent artifact through the pipeline. You can call
GetPipelineState, which displays the status of a pipeline, including the
status of stages in the pipeline, or GetPipeline, which returns the
entire structure of the pipeline, including the stages of that pipeline.
For more information about the structure of stages and actions, also
refer to the \href{https://docs.aws.amazon.com/codepipeline/latest/userguide/pipeline-structure.html}{AWS CodePipeline Pipeline Structure Reference}.

Pipeline stages include \emph{actions}, which are categorized into categories
such as source or build actions performed within a stage of a pipeline.
For example, you can use a source action to import artifacts into a
pipeline from a source such as Amazon S3. Like stages, you do not work
with actions directly in most cases, but you do define and interact with
actions when working with pipeline operations such as CreatePipeline and
GetPipelineState. Valid action categories are:
\itemize{
\item Source
\item Build
\item Test
\item Deploy
\item Approval
\item Invoke
}

Pipelines also include \emph{transitions}, which allow the transition of
artifacts from one stage to the next in a pipeline after the actions in
one stage complete.

You can work with transitions by calling:
\itemize{
\item DisableStageTransition, which prevents artifacts from transitioning
to the next stage in a pipeline.
\item EnableStageTransition, which enables transition of artifacts between
stages in a pipeline.
}

\strong{Using the API to integrate with AWS CodePipeline}

For third-party integrators or developers who want to create their own
integrations with AWS CodePipeline, the expected sequence varies from
the standard API user. In order to integrate with AWS CodePipeline,
developers will need to work with the following items:

\strong{Jobs}, which are instances of an action. For example, a job for a
source action might import a revision of an artifact from a source.

You can work with jobs by calling:
\itemize{
\item AcknowledgeJob, which confirms whether a job worker has received the
specified job,
\item GetJobDetails, which returns the details of a job,
\item PollForJobs, which determines whether there are any jobs to act
upon,
\item PutJobFailureResult, which provides details of a job failure, and
\item PutJobSuccessResult, which provides details of a job success.
}

\strong{Third party jobs}, which are instances of an action created by a
partner action and integrated into AWS CodePipeline. Partner actions are
created by members of the AWS Partner Network.

You can work with third party jobs by calling:
\itemize{
\item AcknowledgeThirdPartyJob, which confirms whether a job worker has
received the specified job,
\item GetThirdPartyJobDetails, which requests the details of a job for a
partner action,
\item PollForThirdPartyJobs, which determines whether there are any jobs
to act upon,
\item PutThirdPartyJobFailureResult, which provides details of a job
failure, and
\item PutThirdPartyJobSuccessResult, which provides details of a job
success.
}
}
\section{Operations}{

\tabular{ll}{
\link[=codepipeline_acknowledge_job]{acknowledge_job} \tab Returns information about a specified job and whether that job has been received by the job worker \cr
\link[=codepipeline_acknowledge_third_party_job]{acknowledge_third_party_job} \tab Confirms a job worker has received the specified job \cr
\link[=codepipeline_create_custom_action_type]{create_custom_action_type} \tab Creates a new custom action that can be used in all pipelines associated with the AWS account \cr
\link[=codepipeline_create_pipeline]{create_pipeline} \tab Creates a pipeline \cr
\link[=codepipeline_delete_custom_action_type]{delete_custom_action_type} \tab Marks a custom action as deleted \cr
\link[=codepipeline_delete_pipeline]{delete_pipeline} \tab Deletes the specified pipeline \cr
\link[=codepipeline_delete_webhook]{delete_webhook} \tab Deletes a previously created webhook by name \cr
\link[=codepipeline_deregister_webhook_with_third_party]{deregister_webhook_with_third_party} \tab Removes the connection between the webhook that was created by CodePipeline and the external tool with events to be detected \cr
\link[=codepipeline_disable_stage_transition]{disable_stage_transition} \tab Prevents artifacts in a pipeline from transitioning to the next stage in the pipeline \cr
\link[=codepipeline_enable_stage_transition]{enable_stage_transition} \tab Enables artifacts in a pipeline to transition to a stage in a pipeline \cr
\link[=codepipeline_get_job_details]{get_job_details} \tab Returns information about a job \cr
\link[=codepipeline_get_pipeline]{get_pipeline} \tab Returns the metadata, structure, stages, and actions of a pipeline \cr
\link[=codepipeline_get_pipeline_execution]{get_pipeline_execution} \tab Returns information about an execution of a pipeline, including details about artifacts, the pipeline execution ID, and the name, version, and status of the pipeline\cr
\link[=codepipeline_get_pipeline_state]{get_pipeline_state} \tab Returns information about the state of a pipeline, including the stages and actions \cr
\link[=codepipeline_get_third_party_job_details]{get_third_party_job_details} \tab Requests the details of a job for a third party action \cr
\link[=codepipeline_list_action_executions]{list_action_executions} \tab Lists the action executions that have occurred in a pipeline \cr
\link[=codepipeline_list_action_types]{list_action_types} \tab Gets a summary of all AWS CodePipeline action types associated with your account \cr
\link[=codepipeline_list_pipeline_executions]{list_pipeline_executions} \tab Gets a summary of the most recent executions for a pipeline \cr
\link[=codepipeline_list_pipelines]{list_pipelines} \tab Gets a summary of all of the pipelines associated with your account \cr
\link[=codepipeline_list_webhooks]{list_webhooks} \tab Gets a listing of all the webhooks in this region for this account \cr
\link[=codepipeline_poll_for_jobs]{poll_for_jobs} \tab Returns information about any jobs for AWS CodePipeline to act upon \cr
\link[=codepipeline_poll_for_third_party_jobs]{poll_for_third_party_jobs} \tab Determines whether there are any third party jobs for a job worker to act on \cr
\link[=codepipeline_put_action_revision]{put_action_revision} \tab Provides information to AWS CodePipeline about new revisions to a source \cr
\link[=codepipeline_put_approval_result]{put_approval_result} \tab Provides the response to a manual approval request to AWS CodePipeline \cr
\link[=codepipeline_put_job_failure_result]{put_job_failure_result} \tab Represents the failure of a job as returned to the pipeline by a job worker \cr
\link[=codepipeline_put_job_success_result]{put_job_success_result} \tab Represents the success of a job as returned to the pipeline by a job worker \cr
\link[=codepipeline_put_third_party_job_failure_result]{put_third_party_job_failure_result} \tab Represents the failure of a third party job as returned to the pipeline by a job worker \cr
\link[=codepipeline_put_third_party_job_success_result]{put_third_party_job_success_result} \tab Represents the success of a third party job as returned to the pipeline by a job worker \cr
\link[=codepipeline_put_webhook]{put_webhook} \tab Defines a webhook and returns a unique webhook URL generated by CodePipeline \cr
\link[=codepipeline_register_webhook_with_third_party]{register_webhook_with_third_party} \tab Configures a connection between the webhook that was created and the external tool with events to be detected \cr
\link[=codepipeline_retry_stage_execution]{retry_stage_execution} \tab Resumes the pipeline execution by retrying the last failed actions in a stage \cr
\link[=codepipeline_start_pipeline_execution]{start_pipeline_execution} \tab Starts the specified pipeline \cr
\link[=codepipeline_update_pipeline]{update_pipeline} \tab Updates a specified pipeline with edits or changes to its structure
}
}

\examples{
\donttest{svc <- codepipeline()
svc$acknowledge_job(
  Foo = 123
)}

}
// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS CodeBuild AWS CodeBuild is a fully managed build service in the cloud. AWS CodeBuild compiles your source code, runs unit tests, and produces artifacts that are ready to deploy. AWS CodeBuild eliminates the need to provision, manage, and scale your own build servers. It provides prepackaged build environments for the most popular programming languages and build tools, such as Apache Maven, Gradle, and more. You can also fully customize build environments in AWS CodeBuild to use your own build tools. AWS CodeBuild scales automatically to meet peak build requests. You pay only for the build time you consume. For more information about AWS CodeBuild, see the AWS CodeBuild User Guide. AWS CodeBuild supports these operations:    BatchDeleteBuilds: Deletes one or more builds.    BatchGetProjects: Gets information about one or more build projects. A build project defines how AWS CodeBuild runs a build. This includes information such as where to get the source code to build, the build environment to use, the build commands to run, and where to store the build output. A build environment is a representation of operating system, programming language runtime, and tools that AWS CodeBuild uses to run a build. You can add tags to build projects to help manage your resources and costs.    CreateProject: Creates a build project.    CreateWebhook: For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, enables AWS CodeBuild to start rebuilding the source code every time a code change is pushed to the repository.    UpdateWebhook: Changes the settings of an existing webhook.    DeleteProject: Deletes a build project.    DeleteWebhook: For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, stops AWS CodeBuild from rebuilding the source code every time a code change is pushed to the repository.    ListProjects: Gets a list of build project names, with each build project name representing a single build project.    UpdateProject: Changes the settings of an existing build project.    BatchGetBuilds: Gets information about one or more builds.    ListBuilds: Gets a list of build IDs, with each build ID representing a single build.    ListBuildsForProject: Gets a list of build IDs for the specified build project, with each build ID representing a single build.    StartBuild: Starts running a build.    StopBuild: Attempts to stop running a build.    ListCuratedEnvironmentImages: Gets information about Docker images that are managed by AWS CodeBuild.    DeleteSourceCredentials: Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials.    ImportSourceCredentials: Imports the source repository credentials for an AWS CodeBuild project that has its source code stored in a GitHub, GitHub Enterprise, or Bitbucket repository.    ListSourceCredentials: Returns a list of SourceCredentialsInfo objects. Each SourceCredentialsInfo object includes the authentication type, token ARN, and type of source provider for one set of credentials.  
*/
public struct CodeBuild {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "CodeBuild_20161006",
            service: "codebuild",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2016-10-06",
            endpoint: endpoint,
            serviceEndpoints: ["us-east-1-fips": "codebuild-fips.us-east-1.amazonaws.com", "us-east-2-fips": "codebuild-fips.us-east-2.amazonaws.com", "us-west-1-fips": "codebuild-fips.us-west-1.amazonaws.com", "us-west-2-fips": "codebuild-fips.us-west-2.amazonaws.com"],
            middlewares: [],
            possibleErrorTypes: [CodeBuildErrorType.self]
        )
    }

    ///  Deletes one or more builds.
    public func batchDeleteBuilds(_ input: BatchDeleteBuildsInput) throws -> Future<BatchDeleteBuildsOutput> {
        return try client.send(operation: "BatchDeleteBuilds", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about builds.
    public func batchGetBuilds(_ input: BatchGetBuildsInput) throws -> Future<BatchGetBuildsOutput> {
        return try client.send(operation: "BatchGetBuilds", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about build projects.
    public func batchGetProjects(_ input: BatchGetProjectsInput) throws -> Future<BatchGetProjectsOutput> {
        return try client.send(operation: "BatchGetProjects", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a build project.
    public func createProject(_ input: CreateProjectInput) throws -> Future<CreateProjectOutput> {
        return try client.send(operation: "CreateProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, enables AWS CodeBuild to start rebuilding the source code every time a code change is pushed to the repository.  If you enable webhooks for an AWS CodeBuild project, and the project is used as a build step in AWS CodePipeline, then two identical builds are created for each commit. One build is triggered through webhooks, and one through AWS CodePipeline. Because billing is on a per-build basis, you are billed for both builds. Therefore, if you are using AWS CodePipeline, we recommend that you disable webhooks in AWS CodeBuild. In the AWS CodeBuild console, clear the Webhook box. For more information, see step 5 in Change a Build Project's Settings. 
    public func createWebhook(_ input: CreateWebhookInput) throws -> Future<CreateWebhookOutput> {
        return try client.send(operation: "CreateWebhook", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a build project.
    public func deleteProject(_ input: DeleteProjectInput) throws -> Future<DeleteProjectOutput> {
        return try client.send(operation: "DeleteProject", path: "/", httpMethod: "POST", input: input)
    }

    ///   Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials. 
    public func deleteSourceCredentials(_ input: DeleteSourceCredentialsInput) throws -> Future<DeleteSourceCredentialsOutput> {
        return try client.send(operation: "DeleteSourceCredentials", path: "/", httpMethod: "POST", input: input)
    }

    ///  For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, stops AWS CodeBuild from rebuilding the source code every time a code change is pushed to the repository.
    public func deleteWebhook(_ input: DeleteWebhookInput) throws -> Future<DeleteWebhookOutput> {
        return try client.send(operation: "DeleteWebhook", path: "/", httpMethod: "POST", input: input)
    }

    ///   Imports the source repository credentials for an AWS CodeBuild project that has its source code stored in a GitHub, GitHub Enterprise, or Bitbucket repository. 
    public func importSourceCredentials(_ input: ImportSourceCredentialsInput) throws -> Future<ImportSourceCredentialsOutput> {
        return try client.send(operation: "ImportSourceCredentials", path: "/", httpMethod: "POST", input: input)
    }

    ///  Resets the cache for a project.
    public func invalidateProjectCache(_ input: InvalidateProjectCacheInput) throws -> Future<InvalidateProjectCacheOutput> {
        return try client.send(operation: "InvalidateProjectCache", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of build IDs, with each build ID representing a single build.
    public func listBuilds(_ input: ListBuildsInput) throws -> Future<ListBuildsOutput> {
        return try client.send(operation: "ListBuilds", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of build IDs for the specified build project, with each build ID representing a single build.
    public func listBuildsForProject(_ input: ListBuildsForProjectInput) throws -> Future<ListBuildsForProjectOutput> {
        return try client.send(operation: "ListBuildsForProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about Docker images that are managed by AWS CodeBuild.
    public func listCuratedEnvironmentImages(_ input: ListCuratedEnvironmentImagesInput) throws -> Future<ListCuratedEnvironmentImagesOutput> {
        return try client.send(operation: "ListCuratedEnvironmentImages", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of build project names, with each build project name representing a single build project.
    public func listProjects(_ input: ListProjectsInput) throws -> Future<ListProjectsOutput> {
        return try client.send(operation: "ListProjects", path: "/", httpMethod: "POST", input: input)
    }

    ///   Returns a list of SourceCredentialsInfo objects. 
    public func listSourceCredentials(_ input: ListSourceCredentialsInput) throws -> Future<ListSourceCredentialsOutput> {
        return try client.send(operation: "ListSourceCredentials", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts running a build.
    public func startBuild(_ input: StartBuildInput) throws -> Future<StartBuildOutput> {
        return try client.send(operation: "StartBuild", path: "/", httpMethod: "POST", input: input)
    }

    ///  Attempts to stop running a build.
    public func stopBuild(_ input: StopBuildInput) throws -> Future<StopBuildOutput> {
        return try client.send(operation: "StopBuild", path: "/", httpMethod: "POST", input: input)
    }

    ///  Changes the settings of a build project.
    public func updateProject(_ input: UpdateProjectInput) throws -> Future<UpdateProjectOutput> {
        return try client.send(operation: "UpdateProject", path: "/", httpMethod: "POST", input: input)
    }

    ///   Updates the webhook associated with an AWS CodeBuild build project.    If you use Bitbucket for your repository, rotateSecret is ignored.  
    public func updateWebhook(_ input: UpdateWebhookInput) throws -> Future<UpdateWebhookOutput> {
        return try client.send(operation: "UpdateWebhook", path: "/", httpMethod: "POST", input: input)
    }
}

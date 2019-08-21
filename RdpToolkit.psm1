[io.directory]::getfiles("$PSScriptRoot\Functions") | ForEach-Object {
    $functioncontent = [io.file]::readalltext($_)
    $ExecutionContext.InvokeCommand.InvokeScript($functioncontent, $false, [Management.Automation.Runspaces.PipelineResultTypes]::None, $null, $null)
}
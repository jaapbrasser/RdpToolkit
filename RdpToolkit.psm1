[io.directory]::getfiles("$PSScriptRoot\Functions") | ForEach-Object {
    $function = [io.file]::readalltext($_)
    $ExecutionContext.InvokeCommand.InvokeScript($function, $false, [Management.Automation.Runspaces.PipelineResultTypes]::None, $null, $null)
}
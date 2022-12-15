$filePath = Read-Host "Enter the path to the text file you want to process"

# Check if the file exists at the specified path
if (Test-Path $filePath)
{
  # Read the file contents into a string
  $fileContents = Get-Content $filePath -Raw

  # Split the string into an array of words
  $words = $fileContents -Split '\s'

  # Join the array of words into a string, with each word on a new line
  $newFileContents = $words -Join "`n"

  # Overwrite the original file with the new file contents
  $newFileContents | Set-Content $filePath

  Write-Host "Each word has been moved to a new line in the file successfully!"
  sleep 4
} 
else
{
  Write-Host "The specified file does not exist!"
  sleep 4
}

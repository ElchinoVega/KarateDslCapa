Feature: Consulta de Historial de movimientos de prestamo.

  Background:

    * url 'https://afrdeu2c008jrvsuat01.azurefd.net'
    * def tokenResponse = call read('accessToken.feature')
    * def token = tokenResponse.accessToken
#    * def token = read('TokenResponseAPI.json').data.accessToken
#    * def monitordata = read(monitordata.json).monitorData

  Scenario: Validar que se realice la consulta exitosa de un prestamo
    Given path '/smp-loan/v1/payment-history'

    # Lo que no se tiene que hacer separar el header campo por campo, esta configuracion se debe registrar en el archivo karate-config.js
    And param loanId = '00044756'
    And param subProductCode = '821'
    And param page = '1'
    And header Authorization = 'Bearer ' + token
    And header traceparent = '00-d571d74b8f7fe3d86ee27b84a8df31ba-27ece2a32eb823b1-01'
    And header consumerId = 'SMP'
    And header deviceType = 'IPH'
    And header monitorData = 'ewogICJEZXZpY2UiIDogewogICAgImltc2kiIDogIiIsCiAgICAiZGV2aWNlT3MiIDogImlPUyIsCiAgICAiaG9zdE5hbWUiIDogImlQaG9uZSBYUiAtIE5hdGFuYWVsIEFsdmFyZXoiLAogICAgImtlcm5lbCIgOiAiIiwKICAgICJzZXJpYWxOdW1iZXIiIDogIiIsCiAgICAiZGV2aWNlSWQiIDogIjc3QTBBMUQ5LTA4MzUtNEUzMi1BMDZELTk4RjIxOEJBNDk1NSIsCiAgICAiZGV2aWNlTW9kZWwiIDogImlQaG9uZSIsCiAgICAiaW1laSIgOiAiIiwKICAgICJkZXZpY2VCcmFuZCIgOiAiQXBwbGUiLAogICAgIm9wZXJhdGl2ZVN5c3RlbSIgOiAiMTIuMy4xIiwKICAgICJpc0RldmljZVJvb3QiIDogIjAiLAogICAgImlzRW11bGF0b3IiIDogIjAiCiAgfSwKICAiR2VvbG9jYXRpb24iIDogewogICAgInJlZ2lvbiIgOiAiIiwKICAgICJjaXR5IiA6ICIiLAogICAgImNvdW50cnkiIDogIlBFIiwKICAgICJwb3N0YWxDb2RlIiA6ICIiLAogICAgImxvbmdpdHVkZSIgOiAiLTc2Ljk5Njc3NDM2NjYyOTEiLAogICAgImxhdGl0dWRlIiA6ICItMTIuMTQxODQ1NzAzMTI1IiwKICAgICJ6aXBDb2RlIiA6ICIiLAogICAgImlzcCIgOiAibW92aXN0YXIiCiAgfSwKICAiSWRlbnRpZmllcnMiIDogewogICAgInVzZXJQYXR0ZXJuIiA6ICIiLAogICAgImhhc2giIDogIjAxMUFGNzJBOTEwQUM0QUMuN0E2MUI1MzcwMUJFRkRBRS41NCIsCiAgICAiaGFzaFNlcnZlciIgOiAiIgogIH0sCiAgIklQTG9jYXRpb24iIDogewogICAgIm9yZyIgOiAiRW50ZWwgUGVydSBTLkEiLAogICAgImlzcCIgOiAiRW50ZWwgUGVydSBTLkEuIiwKICAgICJjaXR5IiA6ICJMaW1hIiwKICAgICJpcCIgOiAiMTQ4LjEwMi4xMTUuNDQiLAogICAgImNvdW50cnkiIDogIlBlcnUiCiAgfSwKICAiTmV0d29yayIgOiB7CiAgICAibWNjIiA6ICIiLAogICAgIm5ldHdvcmtDb2RlIiA6ICIwNiIsCiAgICAibW5jIiA6ICIiLAogICAgInByaXZhdGVJcCIgOiAiIiwKICAgICJjZWxJZCIgOiAiIiwKICAgICJDYXJyaWVyTmFtZSIgOiAibW92aXN0YXIiLAogICAgImFsbG93SXAiIDogIjEiLAogICAgIm1hY0FkZHJlc3MiIDogIiIsCiAgICAiZGV0ZWN0TmV0d29yayIgOiAibW9iaWxlIiwKICAgICJjb3VudHJ5Q29kZSIgOiAiNzE2IiwKICAgICJpc29Db3VudHJ5Q29kZSIgOiAicGUiCiAgfSwKICAiU2Vuc29ycyIgOiB7CiAgICAiZ3lyb3Njb3BlIiA6ICIxIiwKICAgICJkZXZpY2VPcmllbnRhdGlvbiIgOiAiQW5vdGhlciIsCiAgICAibmZjIiA6ICIxIiwKICAgICJkZXZpY2VNb3Rpb24iIDogIjAiLAogICAgInN0ZXBDb3VudGVyIiA6ICIiLAogICAgImRldmljZVByZXNzdXJlIiA6ICIwLjEiLAogICAgImFjY2VsZXJvbWV0ZXIiIDogIjEiLAogICAgImRldmljZVByZXNzdXJlQnlQb2ludCIgOiAiIiwKICAgICJibHVldG9vdGgiIDogIjAiLAogICAgImRldmljZVBvc2l0aW9uIiA6ICJBbm90aGVyIgogIH0sCiAgIkdlbmVyYWwiIDogewogICAgImdlb2xvY2F0aW9uIiA6ICIiLAogICAgInByb2Nlc3NvckNvdW50IiA6ICI2IiwKICAgICJzY3JlZW5SZXNvbHV0aW9uIiA6ICI3NTAuMCAqIDE2MjQuMCIsCiAgICAiaGFyZHdhcmVTZXJpYWwiIDogIiIsCiAgICAidm9pY2VNYWlsZXJOdW1iZXIiIDogIio4MCIsCiAgICAicGFja2FnZU5hbWUiIDogImNvbS5pbnRlcmJhbmtVQVQuYmFuY2Ftb3ZpbCIsCiAgICAiYXBwTmFtZSIgOiAiSW50ZXJiYW5rIFVBVCIsCiAgICAibGFuZ3VhZ2UiIDogImVzLVBFIiwKICAgICJjZXJ0aWZpY2F0ZUlkIiA6ICIiLAogICAgInR5cGVBdXRoZW50aWNhdGlvbiIgOiAiIiwKICAgICJhcHBWZXJzaW9uIiA6ICIxNS40IiwKICAgICJhcHBBY3Rpb24iIDogIkxPR0lOIiwKICAgICJwaG9uZU51bWJlciIgOiAiIgogIH0KfQ=='
    And header subscription-key = '071985bc364c49888b5563ae5aa5ba55;product=smp-loan'
    When method get
    Then status 200
    * def nullValues = karate.filter(response.camposNull, function(x){ return x == null })
    * match nullValues == '#[]'
    And match $.status.code == '0000'
    And match $.status.message == 'Success Response'
Feature: Caller ID
  
  Scenario: Anauthorised attempt to enter Caller ID setup page
    
    Given Klara team admin is logged out
    When he loads the Caller ID setup page
    Then he is redirected to the doctor.klara.com sign in page
    When he enters the correct credentials
    Then he is re-directed to the Caller ID setup page automatically
    
  
    

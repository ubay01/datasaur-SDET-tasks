Feature: Check CEO of SPACE X

    Compare the CEO of SPACE X from wikipedia with open api of SPACE X

    Scenario: Compare CEO of Space X from Wikipedia and SpaceX Land API
        Given Get CEO name from SPACE X Land API
        Given I open wikipedia homepage
        When I search using keyword of CEO of SPACE X
        Then CEO of Space X in Wikipedia is similar from Spacex Land
Feature: Top priority positive use cases of WhatsApp Destkop

    Most important features of WhatsApp desktop app

    Background: Login to WhatsApp Web
        Given Login to WhatsApp desktop app

    Scenario: Create new chat by finding manually the contact on list
        When User create a new chat
        And User select a contact from the contact list
        And User send message to the contact
        Then The message is sent to the contact
        And The contact will appear on the top of the chat list

    Scenario: Create new chat by searching the contact
        When User create a new chat
        And User is using search bar to select a contact
        And User send the message to the contact
        Then Message is sent to the contact
        And The contact will appear on the top of the chat list

    Scenario: Create a new group
        When User create a new group
        Then A new group appear on chat list
        And User is assigned as admin by default

    Scenario: Send media messages
        When User send messages contains multiple medias
        Then Messages is sent
        And Messages can be read on WhatsApp mobile and desktop app

    Scenario: Search chat messages
        When User input keywords on chat search bar
        Then Result provides list of messages contains keywords

    Scenario: Block contact
        Given User open a contact chat screen
        When User block the contact
        Then A notification appear that the block has been done
        And User cannot send messages to the contact anymore


    Scenario: Voice call a contact
        Given User open a contact chat screen
        When User make voice call
        Then Call screen appear with audio only

    Scenario: Video call a contact
        Given User open a contact chat screen
        When User make video call
        Then Call screen appear with audio and video enabled

    Scenario: View story a contact
        Given User go to story screen
        When User tap a contact available on the story list
        Then The contact's story is up displaying on screen
        And Stories are auto play

    Scenario: Logout
        When User logout
        Then Homescreen QR code is displayed





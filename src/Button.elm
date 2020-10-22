module Button exposing (Msg(..), render)

import Browser
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Element.Input as Input
import Html exposing (Html)


type Msg
    = UserPressedButton


view : () -> Html Msg
view _ =
    layout [ padding 50 ] <|
        Input.button
            [ padding 20
            , Border.width 2
            , Border.rounded 16
            , Border.color <| rgb255 0x50 0x50 0x50
            , Border.shadow { offset = ( 4, 4 ), size = 3, blur = 10, color = rgb255 0xD0 0xD0 0xD0 }
            , Background.color <| rgb255 114 159 207
            , Font.color <| rgb255 0xFF 0xFF 0xFF
            , mouseOver
                [ Background.color <| rgb255 0xFF 0xFF 0xFF, Font.color <| rgb255 0 0 0 ]
            , focused
                [ Border.shadow { offset = ( 4, 4 ), size = 3, blur = 10, color = rgb255 114 159 207 } ]
            ]
            { onPress = Just UserPressedButton
            , label = text "Button"
            }

render : String -> Element Msg
render title =
    Input.button
        [ padding 20
        , Border.width 2
        , Border.rounded 16
        , Border.color <| rgb255 0x50 0x50 0x50
        , Border.shadow { offset = ( 4, 4 ), size = 3, blur = 10, color = rgb255 0xD0 0xD0 0xD0 }
        , Background.color <| rgb255 114 159 207
        , Font.color <| rgb255 0xFF 0xFF 0xFF
        , mouseOver
            [ Background.color <| rgb255 0xFF 0xFF 0xFF, Font.color <| rgb255 0 0 0 ]
        , focused
            [ Border.shadow { offset = ( 4, 4 ), size = 3, blur = 10, color = rgb255 114 159 207 } ]
        ]
        { onPress = Just UserPressedButton
        , label = text title
        }


main : Program () () Msg
main =
    Browser.sandbox
        { init = ()
        , view = view
        , update = \_ _ -> ()
        }

module TitleLayout exposing (..)

import Element exposing (..)
import Element.Background as Background
import Button exposing (Msg)
import Element.Border as Border
import Element.Font as Font
import Html exposing (Html)


menu : Element Msg
menu =
    let
        borderSize = 0
    in
    row
        [ width fill
        , centerY
        , padding 20
        , spacing 20
        , height fill
        ]
        [ el
            -- "logo" element
            [ width <| px 80
            --, height <| px 40
            , centerY
            --, Border.rounded 6
            --, Border.color <| rgb255 0xc0 0xc0 0xc0
            ]
            <| Button.render "test"
        , column
            [ alignRight
            --, Border.width 2
            , height fill ]
            [ el [ alignRight ] (text "Services")
            , el [ alignRight ] (text "About")
            , row
                [ centerY, padding 40, spacing 30, Border.width borderSize ]
                [ Button.render "+" ]
            , row
                [ centerY, padding 10, spacing 30, Border.width borderSize ]
                [ Button.render "+" ]
            ]
        ]


main : Html Msg
main =
    layout
        [ width fill
        , height fill
        , inFront menu
        , Background.color <| rgb255 224 259 207
        ] <|
            el
            [ centerX
            , centerY
            , padding 20
            , Background.color <| rgb255 114 159 207
            ] <|
                paragraph
                    [ Font.size 48, Font.center ]
                    [ text "Welcome to "
                    , el [ Font.italic ] <| text "this"
                    , text " page!"
                    ]

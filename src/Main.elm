module Main exposing (main)

import Browser
import Html exposing (Html, button, div, li, span, text, ul)
import Html.Events exposing (onClick)
import List


main =
    Browser.element
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }



-- MODEL


type alias Model =
    { items : List CheckItem
    }


type alias CheckItem =
    { name : String
    , isComplete : Bool
    }


type Msg
    = Complete CheckItem



-- INIT


init : () -> ( Model, Cmd Msg )
init _ =
    ( { items = [] }
    , Cmd.none
    )



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Complete checkItem ->
            ( model
            , Cmd.none
            )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ span [] [ text "Hello Elm" ] ]

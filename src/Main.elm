module Main exposing (main)

import Browser
import Browser.Navigation
import Html exposing (..)
import Html.Attributes exposing (..)
import Url
import Types exposing (..)

import Pages.Landing exposing (landing)


-- Model

init : () -> ( MainModel, Cmd Msg )
init _ =
    ( MainModel Landing, Cmd.none )


update : Msg -> MainModel -> ( MainModel, Cmd Msg )
update msg model =
    ( model, Cmd.none )


-- View
view : MainModel -> Html Msg
view model =
    div []
        [ case model.currentPage of
                  Landing ->
                      landing model
        ]



-- Subscriptions

subscriptions : MainModel -> Sub Msg
subscriptions model =
    Sub.none



main =
    Browser.element
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }
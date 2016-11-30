module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


main : Program Never Model Msg
main =
    Html.program
        { init = createModel
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }



-- TYPES


type alias Model =
    {}


type Msg
    = NoOp



-- MODEL


createModel : ( Model, Cmd Msg )
createModel =
    ( {}, Cmd.none )



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    h1 [] [ text "There you go!" ]

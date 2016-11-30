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


createCard : Html Msg
createCard =
    div [ class "container" ]
        -- try changing ("flipped", False) into ("flipped", True)
        [ div [ classList [ ( "card", True ), ( "flipped", True ) ] ]
            [ div [ class "card-back" ] []
            , div [ class "front card-dinosaur" ] []
            ]
        ]


view : Model -> Html Msg
view model =
    div [ class "wrapper" ]
        [ createCard
        , createCard
        , createCard
        , createCard
        , createCard
        ]

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


type alias Card =
    { id : String
    , group : Group
    , flipped : Bool
    }


type Group
    = A
    | B


type alias Deck =
    List Card


type Model
    = Playing Deck


type Msg
    = NoOp



-- MODEL


cards : List String
cards =
    [ "dinosaur"
    , "8-ball"
    , "baked-potato"
    , "kronos"
    , "rocket"
    , "skinny-unicorn"
    , "that-guy"
    , "zeppelin"
    ]


createModel : ( Model, Cmd Msg )
createModel =
    -- Our model now constists of the unshuffled deck
    ( Playing deck, Cmd.none )


initCard : Group -> String -> Card
initCard group name =
    { id = name
    , group = group
    , flipped = False
    }


deck : Deck
deck =
    let
        groupA =
            List.map (initCard A) cards

        groupB =
            List.map (initCard B) cards
    in
        List.concat [ groupA, groupB ]



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



-- VIEW


cardClass : Card -> String
cardClass card =
    "card-" ++ card.id


createCard : Card -> Html Msg
createCard card =
    div [ class "container" ]
        -- try changing ("flipped", False) into ("flipped", True)
        [ div [ classList [ ( "card", True ), ( "flipped", False ) ] ]
            [ div [ class "card-back" ] []
            , div [ class ("front " ++ cardClass card) ] []
            ]
        ]


view : Model -> Html Msg
view model =
    case model of
        Playing deck ->
            div [ class "wrapper" ] (List.map createCard deck)

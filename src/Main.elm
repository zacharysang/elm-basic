-- for debugging
import Debug

-- for rendering the view
import Browser
import Html exposing (Html)
import Html.Attributes exposing (..)

main = Browser.element { init = init, update = update, view = view, subscriptions = subscriptions }

-- SUBSCRIPTIONS (unused)

subscriptions : Model -> Sub Msg
subscriptions model = Sub.none

-- MODEL

type alias Model = {}

init : () -> (Model, Cmd Msg)
init _ = (
    {},
    Cmd.none
  )


-- UPDATE

type Msg = Empty

-- update will take a Model (the current one), and a new Shape, and output the new Shape
update : Msg -> Model -> (Model, Cmd Msg)
update msg currModel = 
  case msg of
    Empty -> (currModel, Cmd.none)

-- VIEW

view : Model -> Html Msg -- right now message is a dummy since the produced html never emits messages
view model =
  Html.div [] [ Html.text "Hello world!" ]
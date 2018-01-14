module Types exposing (..)

import Route exposing (Route)
import Navigation exposing (Location)
import Home.Types
import Login.Types
import Content.Types

type alias Model =
    { location : Location
    , home : Home.Types.Model
    , login : Login.Types.Model
    , content : Content.Types.Model
    }


type Msg
    = UrlChange Location
    | SetRoute Route
    | LoginMsg Login.Types.Msg
    | HomeMsg Home.Types.Msg
    | ContentMsg Content.Types.Msg
module Pages.Landing exposing (landing)

import Types exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)

landing : MainModel -> Html Msg
landing model =
    --header
    let
        string =
            "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that "
    in
    div [ class "wrapper" ]
        [ div [ class "parallax-container" ]
            [ header
            , div [ class "foreground content" ] [ text (String.repeat 11 string) ]
            ]
        ]




--header : () -> Html Msg
header =
    div [ id "header-container"]
            [ div [ id "header-content" ]
                [ div [ id "header-text-container" ]
                            [ h1 [ class "header-title" ] [ text "Hi!"]
                            , p [ class "header-subtitle"] [ text "Welcome to my kingdom"]
                            ]
                ]
            , div [ id "header-background-image"] []
            ]
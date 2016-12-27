.class public Lcom/android/settings_ex/gesturez7/Z7GestureKeys;
.super Ljava/lang/Object;
.source "Z7GestureKeys.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyByType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "name":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 104
    :goto_0
    :pswitch_0
    return-object v0

    .line 42
    :pswitch_1
    const-string v0, "key_touch_gesture"

    .line 43
    goto :goto_0

    .line 45
    :pswitch_2
    const-string v0, "key_double_click"

    .line 46
    goto :goto_0

    .line 48
    :pswitch_3
    const-string v0, "key_palm_lock"

    .line 49
    goto :goto_0

    .line 51
    :pswitch_4
    const-string v0, "key_free_snap"

    .line 52
    goto :goto_0

    .line 54
    :pswitch_5
    const-string v0, "key_free_finger_cap"

    .line 55
    goto :goto_0

    .line 57
    :pswitch_6
    const-string v0, "key_three_finger_change_app"

    .line 58
    goto :goto_0

    .line 60
    :pswitch_7
    const-string v0, "key_volley_gesture"

    .line 61
    goto :goto_0

    .line 63
    :pswitch_8
    const-string v0, "key_slide_screen"

    .line 64
    goto :goto_0

    .line 66
    :pswitch_9
    const-string v0, "key_answer_call"

    .line 67
    goto :goto_0

    .line 69
    :pswitch_a
    const-string v0, "key_silent_pause"

    .line 70
    goto :goto_0

    .line 72
    :pswitch_b
    const-string v0, "key_forward_back"

    .line 73
    goto :goto_0

    .line 75
    :pswitch_c
    const-string v0, "key_dynamic_wallpaper"

    .line 76
    goto :goto_0

    .line 78
    :pswitch_d
    const-string v0, "key_smart_sensory"

    .line 79
    goto :goto_0

    .line 81
    :pswitch_e
    const-string v0, "key_sensory_dial"

    .line 82
    goto :goto_0

    .line 84
    :pswitch_f
    const-string v0, "key_sensory_answer"

    .line 85
    goto :goto_0

    .line 87
    :pswitch_10
    const-string v0, "key_turn_over"

    .line 88
    goto :goto_0

    .line 90
    :pswitch_11
    const-string v0, "key_rl_shake"

    .line 91
    goto :goto_0

    .line 93
    :pswitch_12
    const-string v0, "key_shake_clear"

    .line 94
    goto :goto_0

    .line 96
    :pswitch_13
    const-string v0, "key_shake_update"

    .line 97
    goto :goto_0

    .line 99
    :pswitch_14
    const-string v0, "key_launcher_switch"

    .line 100
    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_14
    .end packed-switch
.end method

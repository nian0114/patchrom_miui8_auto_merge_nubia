.class public Lcom/android/settings_exlib/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/bluetooth/Utils$ErrorListener;
    }
.end annotation


# static fields
.field private static sErrorListener:Lcom/android/settings_exlib/bluetooth/Utils$ErrorListener;


# direct methods
.method public static getConnectionStateSummary(I)I
    .locals 1
    .param p0, "connectionState"    # I

    .prologue
    .line 15
    packed-switch p0, :pswitch_data_0

    .line 25
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 17
    :pswitch_0
    sget v0, Lcom/android/settings_exlib/R$string;->bluetooth_connected:I

    goto :goto_0

    .line 19
    :pswitch_1
    sget v0, Lcom/android/settings_exlib/R$string;->bluetooth_connecting:I

    goto :goto_0

    .line 21
    :pswitch_2
    sget v0, Lcom/android/settings_exlib/R$string;->bluetooth_disconnected:I

    goto :goto_0

    .line 23
    :pswitch_3
    sget v0, Lcom/android/settings_exlib/R$string;->bluetooth_disconnecting:I

    goto :goto_0

    .line 15
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static setErrorListener(Lcom/android/settings_exlib/bluetooth/Utils$ErrorListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/android/settings_exlib/bluetooth/Utils$ErrorListener;

    .prologue
    .line 36
    sput-object p0, Lcom/android/settings_exlib/bluetooth/Utils;->sErrorListener:Lcom/android/settings_exlib/bluetooth/Utils$ErrorListener;

    .line 37
    return-void
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messageResId"    # I

    .prologue
    .line 30
    sget-object v0, Lcom/android/settings_exlib/bluetooth/Utils;->sErrorListener:Lcom/android/settings_exlib/bluetooth/Utils$ErrorListener;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/android/settings_exlib/bluetooth/Utils;->sErrorListener:Lcom/android/settings_exlib/bluetooth/Utils$ErrorListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/settings_exlib/bluetooth/Utils$ErrorListener;->onShowError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 33
    :cond_0
    return-void
.end method

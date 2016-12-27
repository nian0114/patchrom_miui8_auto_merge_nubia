.class Lcom/android/settings_ex/location/LocationSettings$1;
.super Landroid/os/Handler;
.source "LocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/location/LocationSettings;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings_ex/location/LocationSettings$1;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 134
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 127
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings$1;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    # getter for: Lcom/android/settings_ex/location/LocationSettings;->mIZat:Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/location/LocationSettings;->access$000(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 129
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings$1;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    # getter for: Lcom/android/settings_ex/location/LocationSettings;->mIZat:Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/location/LocationSettings;->access$000(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

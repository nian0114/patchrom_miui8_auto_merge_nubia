.class Lcom/android/settings_ex/SecuritySettings$2;
.super Landroid/os/Handler;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SecuritySettings;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/settings_ex/SecuritySettings$2;->this$0:Lcom/android/settings_ex/SecuritySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 210
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 220
    :goto_0
    return-void

    .line 212
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings$2;->this$0:Lcom/android/settings_ex/SecuritySettings;

    # invokes: Lcom/android/settings_ex/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/settings_ex/SecuritySettings;->access$100(Lcom/android/settings_ex/SecuritySettings;)Landroid/preference/PreferenceScreen;

    goto :goto_0

    .line 215
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings$2;->this$0:Lcom/android/settings_ex/SecuritySettings;

    # invokes: Lcom/android/settings_ex/SecuritySettings;->initUI()V
    invoke-static {v0}, Lcom/android/settings_ex/SecuritySettings;->access$200(Lcom/android/settings_ex/SecuritySettings;)V

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

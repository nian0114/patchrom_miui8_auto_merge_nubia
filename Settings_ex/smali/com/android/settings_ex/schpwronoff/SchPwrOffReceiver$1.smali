.class Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver$1;
.super Landroid/telephony/PhoneStateListener;
.source "SchPwrOffReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver$1;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 123
    packed-switch p1, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 125
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 126
    .local v1, "now":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 127
    .local v0, "date":I
    const-string v2, "SchPwrOffReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver$1;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;

    # getter for: Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->mOringinDate:I
    invoke-static {v2}, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->access$000(Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver$1;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;

    # getter for: Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->isInKeyguard:Z
    invoke-static {v2}, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->access$100(Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver$1;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;

    # invokes: Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->showKeyGuardDialog()V
    invoke-static {v2}, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->access$200(Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver$1;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;

    # invokes: Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->showShutdownAlert()V
    invoke-static {v2}, Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;->access$300(Lcom/android/settings_ex/schpwronoff/SchPwrOffReceiver;)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

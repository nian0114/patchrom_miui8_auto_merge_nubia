.class Lcom/android/settings_ex/CryptKeeperSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/CryptKeeperSettings;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeperSettings$1;->this$0:Lcom/android/settings_ex/CryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "action":Ljava/lang/String;
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 62
    const-string v9, "level"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 63
    .local v2, "level":I
    const-string v9, "plugged"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 64
    .local v4, "plugged":I
    const-string v9, "invalid_charger"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 67
    .local v1, "invalidCharger":I
    const/16 v9, 0x50

    if-lt v2, v9, :cond_1

    move v3, v6

    .line 68
    .local v3, "levelOk":Z
    :goto_0
    and-int/lit8 v9, v4, 0x7

    if-eqz v9, :cond_2

    if-nez v1, :cond_2

    move v5, v6

    .line 73
    .local v5, "pluggedOk":Z
    :goto_1
    iget-object v9, p0, Lcom/android/settings_ex/CryptKeeperSettings$1;->this$0:Lcom/android/settings_ex/CryptKeeperSettings;

    # getter for: Lcom/android/settings_ex/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/settings_ex/CryptKeeperSettings;->access$000(Lcom/android/settings_ex/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v9

    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    :goto_2
    invoke-virtual {v9, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 74
    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperSettings$1;->this$0:Lcom/android/settings_ex/CryptKeeperSettings;

    # getter for: Lcom/android/settings_ex/CryptKeeperSettings;->mPowerWarning:Landroid/view/View;
    invoke-static {v6}, Lcom/android/settings_ex/CryptKeeperSettings;->access$100(Lcom/android/settings_ex/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v9

    if-eqz v5, :cond_4

    move v6, v8

    :goto_3
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperSettings$1;->this$0:Lcom/android/settings_ex/CryptKeeperSettings;

    # getter for: Lcom/android/settings_ex/CryptKeeperSettings;->mBatteryWarning:Landroid/view/View;
    invoke-static {v6}, Lcom/android/settings_ex/CryptKeeperSettings;->access$200(Lcom/android/settings_ex/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v6

    if-eqz v3, :cond_5

    :goto_4
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .end local v1    # "invalidCharger":I
    .end local v2    # "level":I
    .end local v3    # "levelOk":Z
    .end local v4    # "plugged":I
    .end local v5    # "pluggedOk":Z
    :cond_0
    return-void

    .restart local v1    # "invalidCharger":I
    .restart local v2    # "level":I
    .restart local v4    # "plugged":I
    :cond_1
    move v3, v7

    .line 67
    goto :goto_0

    .restart local v3    # "levelOk":Z
    :cond_2
    move v5, v7

    .line 68
    goto :goto_1

    .restart local v5    # "pluggedOk":Z
    :cond_3
    move v6, v7

    .line 73
    goto :goto_2

    :cond_4
    move v6, v7

    .line 74
    goto :goto_3

    :cond_5
    move v8, v7

    .line 75
    goto :goto_4
.end method

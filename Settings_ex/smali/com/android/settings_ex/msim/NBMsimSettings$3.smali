.class Lcom/android/settings_ex/msim/NBMsimSettings$3;
.super Ljava/lang/Object;
.source "NBMsimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/msim/NBMsimSettings;->showDataAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/msim/NBMsimSettings;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/settings_ex/msim/NBMsimSettings$3;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    iput-object p2, p0, Lcom/android/settings_ex/msim/NBMsimSettings$3;->val$preferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 683
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings$3;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 684
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "switch_data_alert"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 685
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 686
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 687
    return-void
.end method

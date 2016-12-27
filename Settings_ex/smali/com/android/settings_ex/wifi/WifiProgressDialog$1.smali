.class Lcom/android/settings_ex/wifi/WifiProgressDialog$1;
.super Ljava/lang/Object;
.source "WifiProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiProgressDialog;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiProgressDialog$1;->this$0:Lcom/android/settings_ex/wifi/WifiProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiProgressDialog$1;->this$0:Lcom/android/settings_ex/wifi/WifiProgressDialog;

    # getter for: Lcom/android/settings_ex/wifi/WifiProgressDialog;->mTracker:Lcom/android/settings_ex/wifi/WifiTracker;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiProgressDialog;->access$000(Lcom/android/settings_ex/wifi/WifiProgressDialog;)Lcom/android/settings_ex/wifi/WifiTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiTracker;->stopCheckAddNetwork()V

    .line 49
    return-void
.end method

.class Lcom/android/settings_ex/applications/AppTypeListActivity$6;
.super Ljava/lang/Object;
.source "AppTypeListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/AppTypeListActivity;->showConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/AppTypeListActivity;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$6;->this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$6;->this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;

    # invokes: Lcom/android/settings_ex/applications/AppTypeListActivity;->resetToDefaults()V
    invoke-static {v0}, Lcom/android/settings_ex/applications/AppTypeListActivity;->access$800(Lcom/android/settings_ex/applications/AppTypeListActivity;)V

    .line 306
    return-void
.end method

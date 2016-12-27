.class Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$4;
.super Ljava/lang/Object;
.source "DefaultAppSelectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->buildCandidateActivityList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$4;->this$0:Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$4;->this$0:Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    # getter for: Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mCurrentApp:Lcom/android/settings_ex/applications/AppPreference;
    invoke-static {v0}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->access$200(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;)Lcom/android/settings_ex/applications/AppPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/AppPreference;->setChecked(Z)V

    .line 192
    return-void
.end method

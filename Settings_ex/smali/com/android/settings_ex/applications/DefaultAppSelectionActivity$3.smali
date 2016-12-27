.class Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$3;
.super Ljava/lang/Object;
.source "DefaultAppSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$pref:Lcom/android/settings_ex/applications/AppPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;Lcom/android/settings_ex/applications/AppPreference;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$3;->this$0:Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    iput-object p2, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$3;->val$pref:Lcom/android/settings_ex/applications/AppPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$3;->this$0:Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$3;->val$pref:Lcom/android/settings_ex/applications/AppPreference;

    # invokes: Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->makeCurrentDefault(Lcom/android/settings_ex/applications/AppPreference;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->access$400(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;Lcom/android/settings_ex/applications/AppPreference;)V

    .line 172
    return-void
.end method

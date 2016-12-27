.class Lcom/android/settings_ex/profile/DeskmodeFragment$2;
.super Ljava/lang/Object;
.source "DeskmodeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/profile/DeskmodeFragment;->buildHomeActivitiesList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profile/DeskmodeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profile/DeskmodeFragment;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$2;->this$0:Lcom/android/settings_ex/profile/DeskmodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$2;->this$0:Lcom/android/settings_ex/profile/DeskmodeFragment;

    # getter for: Lcom/android/settings_ex/profile/DeskmodeFragment;->mCurrentHome:Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;
    invoke-static {v0}, Lcom/android/settings_ex/profile/DeskmodeFragment;->access$100(Lcom/android/settings_ex/profile/DeskmodeFragment;)Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->setChecked(Z)V

    .line 172
    return-void
.end method

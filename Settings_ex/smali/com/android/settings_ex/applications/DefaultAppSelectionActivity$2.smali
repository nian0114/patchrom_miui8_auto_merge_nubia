.class Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$2;
.super Landroid/os/Handler;
.source "DefaultAppSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 82
    iput-object p1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$2;->this$0:Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 84
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 98
    :cond_0
    return-void

    .line 86
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$2;->this$0:Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    # getter for: Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mPrepGroup:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->access$100(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 87
    sget-object v1, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentApp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$2;->this$0:Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    # getter for: Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mCurrentApp:Lcom/android/settings_ex/applications/AppPreference;
    invoke-static {v3}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->access$200(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;)Lcom/android/settings_ex/applications/AppPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/applications/AppPreference;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$2;->this$0:Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    # getter for: Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mPrefs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->access$300(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$2;->this$0:Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    # getter for: Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mPrefs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->access$300(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$2;->this$0:Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    # getter for: Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mCurrentApp:Lcom/android/settings_ex/applications/AppPreference;
    invoke-static {v2}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->access$200(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;)Lcom/android/settings_ex/applications/AppPreference;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$2;->this$0:Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    # getter for: Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mPrefs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->access$300(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/AppPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applications/AppPreference;->setChecked(Z)V

    .line 88
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity$2;->this$0:Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;

    # getter for: Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->mPrefs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;->access$300(Lcom/android/settings_ex/applications/DefaultAppSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/AppPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/applications/AppPreference;->setChecked(Z)V

    goto :goto_1

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

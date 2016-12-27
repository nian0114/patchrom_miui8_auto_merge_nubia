.class Lcom/android/settings_ex/accounts/ChooseAccountActivity$1;
.super Ljava/lang/Object;
.source "ChooseAccountActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accounts/ChooseAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accounts/ChooseAccountActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accounts/ChooseAccountActivity;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings_ex/accounts/ChooseAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 297
    instance-of v1, p1, Lcom/android/settings_ex/accounts/ProviderPreference;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 298
    check-cast v0, Lcom/android/settings_ex/accounts/ProviderPreference;

    .line 299
    .local v0, "pref":Lcom/android/settings_ex/accounts/ProviderPreference;
    const-string v1, "ChooseAccountActivity"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    const-string v1, "ChooseAccountActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to add account of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings_ex/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings_ex/accounts/ChooseAccountActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/settings_ex/accounts/ChooseAccountActivity;->finishWithAccountType(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->access$200(Lcom/android/settings_ex/accounts/ChooseAccountActivity;Ljava/lang/String;)V

    .line 303
    const/4 v1, 0x1

    .line 305
    .end local v0    # "pref":Lcom/android/settings_ex/accounts/ProviderPreference;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

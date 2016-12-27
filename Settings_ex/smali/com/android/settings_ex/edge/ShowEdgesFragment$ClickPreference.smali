.class Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;
.super Ljava/lang/Object;
.source "ShowEdgesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/edge/ShowEdgesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClickPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/edge/ShowEdgesFragment;

.field type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/edge/ShowEdgesFragment;Ljava/lang/String;)V
    .locals 0
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;->this$0:Lcom/android/settings_ex/edge/ShowEdgesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p2, p0, Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;->type:Ljava/lang/String;

    .line 150
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, "activityName":Ljava/lang/String;
    const-string v3, "edge_two_hands"

    iget-object v4, p0, Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    const-string v0, "cn.nubia.edge.EdgeActivity$TwoHandsActivity"

    .line 174
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 175
    const/4 v3, 0x0

    .line 185
    :goto_1
    return v3

    .line 159
    :cond_1
    const-string v3, "edge_single_hold"

    iget-object v4, p0, Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    const-string v0, "cn.nubia.edge.EdgeActivity$HoldSingleActivity"

    goto :goto_0

    .line 161
    :cond_2
    const-string v3, "edge_flide"

    iget-object v4, p0, Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 162
    const-string v0, "cn.nubia.edge.EdgeActivity$FlideActivity"

    goto :goto_0

    .line 163
    :cond_3
    const-string v3, "edge_flide_repeat"

    iget-object v4, p0, Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 164
    const-string v0, "cn.nubia.edge.EdgeActivity$FlideRepeatActivity"

    goto :goto_0

    .line 165
    :cond_4
    const-string v3, "edge_flide_double_sided"

    iget-object v4, p0, Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 166
    const-string v0, "cn.nubia.edge.EdgeActivity$FlideDoubleSidedActivity"

    goto :goto_0

    .line 167
    :cond_5
    const-string v3, "edge_flide_inward"

    iget-object v4, p0, Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 168
    const-string v0, "cn.nubia.edge.EdgeActivity$FlideInwardActivity"

    goto :goto_0

    .line 169
    :cond_6
    const-string v3, "edge_flide_single_move_switch"

    iget-object v4, p0, Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 170
    const-string v0, "cn.nubia.edge.EdgeActivity$FlideSingleMoveSwitchActivity"

    goto :goto_0

    .line 171
    :cond_7
    const-string v3, "edge_click"

    iget-object v4, p0, Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    const-string v0, "cn.nubia.edge.EdgeActivity$ClickActivity"

    goto :goto_0

    .line 177
    :cond_8
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 178
    .local v2, "mIntent":Landroid/content/Intent;
    const-string v3, "cn.nubia.edge"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/edge/ShowEdgesFragment$ClickPreference;->this$0:Lcom/android/settings_ex/edge/ShowEdgesFragment;

    invoke-virtual {v3, v2}, Lcom/android/settings_ex/edge/ShowEdgesFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_2
    const/4 v3, 0x1

    goto :goto_1

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "ShowEdgesFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity failed: Intent.activityName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.class Lcom/android/settings_ex/schpwronoff/TimePickerPreference$1;
.super Ljava/lang/Object;
.source "TimePickerPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/schpwronoff/TimePickerPreference;->init(Landroid/content/Context;Landroid/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

.field final synthetic val$mgr:Landroid/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/schpwronoff/TimePickerPreference;Landroid/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference$1;->this$0:Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

    iput-object p2, p0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference$1;->val$mgr:Landroid/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 55
    new-instance v0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference$TimePickerFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/schpwronoff/TimePickerPreference$TimePickerFragment;-><init>()V

    .line 56
    .local v0, "frag":Lcom/android/settings_ex/schpwronoff/TimePickerPreference$TimePickerFragment;
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference$1;->this$0:Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

    iput-object v1, v0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

    .line 57
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/TimePickerPreference$1;->val$mgr:Landroid/app/FragmentManager;

    const-class v2, Lcom/android/settings_ex/schpwronoff/TimePickerPreference;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/schpwronoff/TimePickerPreference$TimePickerFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 58
    const/4 v1, 0x1

    return v1
.end method

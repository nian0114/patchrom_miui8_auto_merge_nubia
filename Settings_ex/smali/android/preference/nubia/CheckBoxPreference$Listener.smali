.class public Landroid/preference/nubia/CheckBoxPreference$Listener;
.super Ljava/lang/Object;
.source "CheckBoxPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/nubia/CheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Listener"
.end annotation


# instance fields
.field private preferenceManager:Landroid/preference/PreferenceManager;

.field private preferenceScreen:Landroid/preference/PreferenceScreen;

.field final synthetic this$0:Landroid/preference/nubia/CheckBoxPreference;


# direct methods
.method public constructor <init>(Landroid/preference/nubia/CheckBoxPreference;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Landroid/preference/nubia/CheckBoxPreference$Listener;->this$0:Landroid/preference/nubia/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handlePreferenceTreeClick()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 85
    iget-object v1, p0, Landroid/preference/nubia/CheckBoxPreference$Listener;->this$0:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/nubia/CheckBoxPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v3, "getOnPreferenceTreeClickListener"

    invoke-static {v1, v3, v6, v2}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, "listener":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 88
    const-string v1, "onPreferenceTreeClick"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/preference/nubia/CheckBoxPreference$Listener;->preferenceScreen:Landroid/preference/PreferenceScreen;

    aput-object v3, v4, v2

    iget-object v3, p0, Landroid/preference/nubia/CheckBoxPreference$Listener;->this$0:Landroid/preference/nubia/CheckBoxPreference;

    aput-object v3, v4, v6

    new-array v5, v5, [Ljava/lang/Class;

    const-class v3, Landroid/preference/PreferenceScreen;

    aput-object v3, v5, v2

    const-class v3, Landroid/preference/Preference;

    aput-object v3, v5, v6

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    iget-object v2, p0, Landroid/preference/nubia/CheckBoxPreference$Listener;->this$0:Landroid/preference/nubia/CheckBoxPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    # invokes: Landroid/preference/nubia/CheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v2, v3}, Landroid/preference/nubia/CheckBoxPreference;->access$000(Landroid/preference/nubia/CheckBoxPreference;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 62
    if-nez p2, :cond_1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 82
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 62
    goto :goto_0

    .line 66
    :cond_2
    iget-object v2, p0, Landroid/preference/nubia/CheckBoxPreference$Listener;->this$0:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 67
    iget-object v2, p0, Landroid/preference/nubia/CheckBoxPreference$Listener;->this$0:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/nubia/CheckBoxPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/nubia/CheckBoxPreference$Listener;->preferenceManager:Landroid/preference/PreferenceManager;

    .line 68
    iget-object v2, p0, Landroid/preference/nubia/CheckBoxPreference$Listener;->preferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Landroid/preference/nubia/CheckBoxPreference$Listener;->this$0:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/nubia/CheckBoxPreference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/preference/nubia/CheckBoxPreference$Listener;->this$0:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/nubia/CheckBoxPreference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/nubia/CheckBoxPreference$Listener;->this$0:Landroid/preference/nubia/CheckBoxPreference;

    invoke-interface {v2, v3}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    :cond_3
    iget-object v2, p0, Landroid/preference/nubia/CheckBoxPreference$Listener;->this$0:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/nubia/CheckBoxPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    const-string v3, "getPreferenceScreen"

    invoke-static {v2, v3, v0, v1}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Landroid/preference/nubia/CheckBoxPreference$Listener;->preferenceScreen:Landroid/preference/PreferenceScreen;

    .line 78
    iget-object v0, p0, Landroid/preference/nubia/CheckBoxPreference$Listener;->preferenceScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Landroid/preference/nubia/CheckBoxPreference$Listener;->handlePreferenceTreeClick()V

    goto :goto_1
.end method

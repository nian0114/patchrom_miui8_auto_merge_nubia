.class Lcom/android/settings_ex/ZSettingsCheckBoxPreference$Listener;
.super Ljava/lang/Object;
.source "ZSettingsCheckBoxPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ZSettingsCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ZSettingsCheckBoxPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/ZSettingsCheckBoxPreference;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/settings_ex/ZSettingsCheckBoxPreference$Listener;->this$0:Lcom/android/settings_ex/ZSettingsCheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/ZSettingsCheckBoxPreference;Lcom/android/settings_ex/ZSettingsCheckBoxPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/ZSettingsCheckBoxPreference;
    .param p2, "x1"    # Lcom/android/settings_ex/ZSettingsCheckBoxPreference$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ZSettingsCheckBoxPreference$Listener;-><init>(Lcom/android/settings_ex/ZSettingsCheckBoxPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ex/ZSettingsCheckBoxPreference$Listener;->this$0:Lcom/android/settings_ex/ZSettingsCheckBoxPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # invokes: Lcom/android/settings_ex/ZSettingsCheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/ZSettingsCheckBoxPreference;->access$100(Lcom/android/settings_ex/ZSettingsCheckBoxPreference;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 48
    :goto_1
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ZSettingsCheckBoxPreference$Listener;->this$0:Lcom/android/settings_ex/ZSettingsCheckBoxPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings_ex/ZSettingsCheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method

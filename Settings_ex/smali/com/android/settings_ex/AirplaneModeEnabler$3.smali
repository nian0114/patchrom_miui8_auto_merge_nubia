.class Lcom/android/settings_ex/AirplaneModeEnabler$3;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler.java"

# interfaces
.implements Lcom/android/settings_ex/QuickClickAgent$OnClickedTodoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/nubia/CheckBoxPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/AirplaneModeEnabler;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings_ex/AirplaneModeEnabler$3;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickTodo(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler$3;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    # invokes: Lcom/android/settings_ex/AirplaneModeEnabler;->airplaneSwitchChange(Z)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/AirplaneModeEnabler;->access$100(Lcom/android/settings_ex/AirplaneModeEnabler;Z)V

    .line 83
    return-void
.end method

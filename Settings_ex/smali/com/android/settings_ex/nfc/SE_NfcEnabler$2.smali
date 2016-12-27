.class Lcom/android/settings_ex/nfc/SE_NfcEnabler$2;
.super Ljava/lang/Object;
.source "SE_NfcEnabler.java"

# interfaces
.implements Lcom/android/settings_ex/QuickClickAgent$OnClickedTodoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/nfc/SE_NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/nubia/CheckBoxPreference;Landroid/preference/PreferenceScreen;Lcn/nubia/commonui/preference/ListPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nfc/SE_NfcEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nfc/SE_NfcEnabler;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler$2;->this$0:Lcom/android/settings_ex/nfc/SE_NfcEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickTodo(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SE_NfcEnabler$2;->this$0:Lcom/android/settings_ex/nfc/SE_NfcEnabler;

    # invokes: Lcom/android/settings_ex/nfc/SE_NfcEnabler;->nfcPreferenceChange(Z)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/nfc/SE_NfcEnabler;->access$100(Lcom/android/settings_ex/nfc/SE_NfcEnabler;Z)V

    .line 92
    return-void
.end method

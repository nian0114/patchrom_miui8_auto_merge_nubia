.class Lcom/android/settings_ex/RingtonePickerActivity$2;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/RingtonePickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RingtonePickerActivity;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/settings_ex/RingtonePickerActivity$2;->this$0:Lcom/android/settings_ex/RingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnNegativeButtonClick()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity$2;->this$0:Lcom/android/settings_ex/RingtonePickerActivity;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings_ex/RingtonePickerActivity;->finishActivity(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/RingtonePickerActivity;->access$200(Lcom/android/settings_ex/RingtonePickerActivity;Z)V

    .line 188
    return-void
.end method

.method public OnPositiveButtonClick()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity$2;->this$0:Lcom/android/settings_ex/RingtonePickerActivity;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings_ex/RingtonePickerActivity;->finishActivity(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/RingtonePickerActivity;->access$200(Lcom/android/settings_ex/RingtonePickerActivity;Z)V

    .line 183
    return-void
.end method

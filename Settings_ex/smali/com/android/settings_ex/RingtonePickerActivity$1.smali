.class Lcom/android/settings_ex/RingtonePickerActivity$1;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/RingtonePickerActivity;
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
    .line 95
    iput-object p1, p0, Lcom/android/settings_ex/RingtonePickerActivity$1;->this$0:Lcom/android/settings_ex/RingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity$1;->this$0:Lcom/android/settings_ex/RingtonePickerActivity;

    # setter for: Lcom/android/settings_ex/RingtonePickerActivity;->mClickedPos:I
    invoke-static {v0, p3}, Lcom/android/settings_ex/RingtonePickerActivity;->access$002(Lcom/android/settings_ex/RingtonePickerActivity;I)I

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity$1;->this$0:Lcom/android/settings_ex/RingtonePickerActivity;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings_ex/RingtonePickerActivity;->playRingtone(II)V
    invoke-static {v0, p3, v1}, Lcom/android/settings_ex/RingtonePickerActivity;->access$100(Lcom/android/settings_ex/RingtonePickerActivity;II)V

    .line 103
    return-void
.end method

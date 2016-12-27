.class Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection$1;
.super Ljava/lang/Object;
.source "ZenModeDowntimeDaysSelection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;-><init>(Landroid/content/Context;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;

.field final synthetic val$day:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;I)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection$1;->this$0:Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;

    iput p2, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection$1;->val$day:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection$1;->this$0:Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;

    # getter for: Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mDisableListeners:Z
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->access$000(Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 80
    :cond_0
    if-eqz p2, :cond_2

    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection$1;->this$0:Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;

    # getter for: Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mDays:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->access$100(Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection$1;->val$day:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection$1;->this$0:Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;

    # getter for: Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mDays:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->access$100(Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection$1;->val$day:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection$1;->this$0:Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection$1;->this$0:Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;

    # invokes: Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->getSelectDays()[I
    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->access$200(Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->onChanged([I)V

    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection$1;->this$0:Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;

    # getter for: Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mDays:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->access$100(Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection$1;->val$day:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

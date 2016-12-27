.class Lcom/android/settings_ex/TimeoutLockingPreference$1;
.super Ljava/lang/Object;
.source "TimeoutLockingPreference.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TimeoutLockingPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TimeoutLockingPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TimeoutLockingPreference;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings_ex/TimeoutLockingPreference$1;->this$0:Lcom/android/settings_ex/TimeoutLockingPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 72
    sparse-switch p2, :sswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 74
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/TimeoutLockingPreference$1;->this$0:Lcom/android/settings_ex/TimeoutLockingPreference;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings_ex/TimeoutLockingPreference;->setLockTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/TimeoutLockingPreference;->access$000(Lcom/android/settings_ex/TimeoutLockingPreference;I)V

    goto :goto_0

    .line 77
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/TimeoutLockingPreference$1;->this$0:Lcom/android/settings_ex/TimeoutLockingPreference;

    const/16 v1, 0x1388

    # invokes: Lcom/android/settings_ex/TimeoutLockingPreference;->setLockTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/TimeoutLockingPreference;->access$000(Lcom/android/settings_ex/TimeoutLockingPreference;I)V

    goto :goto_0

    .line 80
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/TimeoutLockingPreference$1;->this$0:Lcom/android/settings_ex/TimeoutLockingPreference;

    const/16 v1, 0x3a98

    # invokes: Lcom/android/settings_ex/TimeoutLockingPreference;->setLockTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/TimeoutLockingPreference;->access$000(Lcom/android/settings_ex/TimeoutLockingPreference;I)V

    goto :goto_0

    .line 83
    :sswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/TimeoutLockingPreference$1;->this$0:Lcom/android/settings_ex/TimeoutLockingPreference;

    const/16 v1, 0x7530

    # invokes: Lcom/android/settings_ex/TimeoutLockingPreference;->setLockTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/TimeoutLockingPreference;->access$000(Lcom/android/settings_ex/TimeoutLockingPreference;I)V

    goto :goto_0

    .line 86
    :sswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/TimeoutLockingPreference$1;->this$0:Lcom/android/settings_ex/TimeoutLockingPreference;

    const v1, 0xea60

    # invokes: Lcom/android/settings_ex/TimeoutLockingPreference;->setLockTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/TimeoutLockingPreference;->access$000(Lcom/android/settings_ex/TimeoutLockingPreference;I)V

    goto :goto_0

    .line 89
    :sswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/TimeoutLockingPreference$1;->this$0:Lcom/android/settings_ex/TimeoutLockingPreference;

    const v1, 0x1d4c0

    # invokes: Lcom/android/settings_ex/TimeoutLockingPreference;->setLockTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/TimeoutLockingPreference;->access$000(Lcom/android/settings_ex/TimeoutLockingPreference;I)V

    goto :goto_0

    .line 92
    :sswitch_6
    iget-object v0, p0, Lcom/android/settings_ex/TimeoutLockingPreference$1;->this$0:Lcom/android/settings_ex/TimeoutLockingPreference;

    const v1, 0x493e0

    # invokes: Lcom/android/settings_ex/TimeoutLockingPreference;->setLockTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/TimeoutLockingPreference;->access$000(Lcom/android/settings_ex/TimeoutLockingPreference;I)V

    goto :goto_0

    .line 95
    :sswitch_7
    iget-object v0, p0, Lcom/android/settings_ex/TimeoutLockingPreference$1;->this$0:Lcom/android/settings_ex/TimeoutLockingPreference;

    const v1, 0x927c0

    # invokes: Lcom/android/settings_ex/TimeoutLockingPreference;->setLockTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/TimeoutLockingPreference;->access$000(Lcom/android/settings_ex/TimeoutLockingPreference;I)V

    goto :goto_0

    .line 98
    :sswitch_8
    iget-object v0, p0, Lcom/android/settings_ex/TimeoutLockingPreference$1;->this$0:Lcom/android/settings_ex/TimeoutLockingPreference;

    const v1, 0x1b7740

    # invokes: Lcom/android/settings_ex/TimeoutLockingPreference;->setLockTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/TimeoutLockingPreference;->access$000(Lcom/android/settings_ex/TimeoutLockingPreference;I)V

    goto :goto_0

    .line 72
    :sswitch_data_0
    .sparse-switch
        0x7f1200df -> :sswitch_0
        0x7f1200e2 -> :sswitch_1
        0x7f1202f1 -> :sswitch_2
        0x7f1202f2 -> :sswitch_3
        0x7f1202f3 -> :sswitch_4
        0x7f1202f4 -> :sswitch_5
        0x7f1202f5 -> :sswitch_6
        0x7f1202f6 -> :sswitch_7
        0x7f1202f7 -> :sswitch_8
    .end sparse-switch
.end method

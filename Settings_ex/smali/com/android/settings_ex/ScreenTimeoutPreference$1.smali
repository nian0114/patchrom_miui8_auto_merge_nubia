.class Lcom/android/settings_ex/ScreenTimeoutPreference$1;
.super Ljava/lang/Object;
.source "ScreenTimeoutPreference.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ScreenTimeoutPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ScreenTimeoutPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ScreenTimeoutPreference;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings_ex/ScreenTimeoutPreference$1;->this$0:Lcom/android/settings_ex/ScreenTimeoutPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 70
    sparse-switch p2, :sswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 72
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/ScreenTimeoutPreference$1;->this$0:Lcom/android/settings_ex/ScreenTimeoutPreference;

    const/16 v1, 0x3a98

    # invokes: Lcom/android/settings_ex/ScreenTimeoutPreference;->setScreenTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/ScreenTimeoutPreference;->access$000(Lcom/android/settings_ex/ScreenTimeoutPreference;I)V

    goto :goto_0

    .line 75
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/ScreenTimeoutPreference$1;->this$0:Lcom/android/settings_ex/ScreenTimeoutPreference;

    const/16 v1, 0x7530

    # invokes: Lcom/android/settings_ex/ScreenTimeoutPreference;->setScreenTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/ScreenTimeoutPreference;->access$000(Lcom/android/settings_ex/ScreenTimeoutPreference;I)V

    goto :goto_0

    .line 78
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/ScreenTimeoutPreference$1;->this$0:Lcom/android/settings_ex/ScreenTimeoutPreference;

    const v1, 0xea60

    # invokes: Lcom/android/settings_ex/ScreenTimeoutPreference;->setScreenTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/ScreenTimeoutPreference;->access$000(Lcom/android/settings_ex/ScreenTimeoutPreference;I)V

    goto :goto_0

    .line 81
    :sswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/ScreenTimeoutPreference$1;->this$0:Lcom/android/settings_ex/ScreenTimeoutPreference;

    const v1, 0x1d4c0

    # invokes: Lcom/android/settings_ex/ScreenTimeoutPreference;->setScreenTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/ScreenTimeoutPreference;->access$000(Lcom/android/settings_ex/ScreenTimeoutPreference;I)V

    goto :goto_0

    .line 84
    :sswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/ScreenTimeoutPreference$1;->this$0:Lcom/android/settings_ex/ScreenTimeoutPreference;

    const v1, 0x493e0

    # invokes: Lcom/android/settings_ex/ScreenTimeoutPreference;->setScreenTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/ScreenTimeoutPreference;->access$000(Lcom/android/settings_ex/ScreenTimeoutPreference;I)V

    goto :goto_0

    .line 87
    :sswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/ScreenTimeoutPreference$1;->this$0:Lcom/android/settings_ex/ScreenTimeoutPreference;

    const v1, 0x927c0

    # invokes: Lcom/android/settings_ex/ScreenTimeoutPreference;->setScreenTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/ScreenTimeoutPreference;->access$000(Lcom/android/settings_ex/ScreenTimeoutPreference;I)V

    goto :goto_0

    .line 90
    :sswitch_6
    iget-object v0, p0, Lcom/android/settings_ex/ScreenTimeoutPreference$1;->this$0:Lcom/android/settings_ex/ScreenTimeoutPreference;

    const v1, 0x7fffffff

    # invokes: Lcom/android/settings_ex/ScreenTimeoutPreference;->setScreenTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/ScreenTimeoutPreference;->access$000(Lcom/android/settings_ex/ScreenTimeoutPreference;I)V

    goto :goto_0

    .line 70
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1200df -> :sswitch_0
        0x7f1200e2 -> :sswitch_1
        0x7f1202f1 -> :sswitch_2
        0x7f1202f2 -> :sswitch_3
        0x7f1202f3 -> :sswitch_4
        0x7f1202f4 -> :sswitch_5
        0x7f1202f5 -> :sswitch_6
    .end sparse-switch
.end method

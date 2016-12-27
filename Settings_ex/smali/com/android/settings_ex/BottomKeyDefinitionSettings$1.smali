.class Lcom/android/settings_ex/BottomKeyDefinitionSettings$1;
.super Ljava/lang/Object;
.source "BottomKeyDefinitionSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/BottomKeyDefinitionSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/BottomKeyDefinitionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/BottomKeyDefinitionSettings;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings$1;->this$0:Lcom/android/settings_ex/BottomKeyDefinitionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    # getter for: Lcom/android/settings_ex/BottomKeyDefinitionSettings;->KEY_MENU_AND_HOME_POS:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings$1;->this$0:Lcom/android/settings_ex/BottomKeyDefinitionSettings;

    # getter for: Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mBottomLayout1:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->access$100(Lcom/android/settings_ex/BottomKeyDefinitionSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setActivated(Z)V

    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings$1;->this$0:Lcom/android/settings_ex/BottomKeyDefinitionSettings;

    # getter for: Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mBottomLayout2:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->access$200(Lcom/android/settings_ex/BottomKeyDefinitionSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings$1;->this$0:Lcom/android/settings_ex/BottomKeyDefinitionSettings;

    # getter for: Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mRadio1:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->access$300(Lcom/android/settings_ex/BottomKeyDefinitionSettings;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings$1;->this$0:Lcom/android/settings_ex/BottomKeyDefinitionSettings;

    # getter for: Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mRadio2:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->access$400(Lcom/android/settings_ex/BottomKeyDefinitionSettings;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 53
    return-void
.end method

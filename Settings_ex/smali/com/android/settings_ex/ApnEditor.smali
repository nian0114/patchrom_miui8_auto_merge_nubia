.class public Lcom/android/settings_ex/ApnEditor;
.super Lcn/nubia/commonui/widget/NubiaDialogActivity;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;
    }
.end annotation


# instance fields
.field private mApnEditorFragment:Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;-><init>()V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ApnEditor;)Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ApnEditor;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mApnEditorFragment:Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mApnEditorFragment:Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->dealActivityEvent(I)V

    .line 104
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    const v4, 0x7f0d005c

    const v5, 0x7f0d005b

    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/ApnEditor;->setThemes(II)V

    .line 64
    invoke-super {p0, p1}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v4, 0x7f040021

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->setContentView(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getWindow()Landroid/view/Window;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/PhoneWindow;

    const/4 v5, 0x1

    const v6, 0x7f0e0065

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 67
    const v4, 0x7f0c0438

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->setTitle(I)V

    .line 68
    const v4, 0x7f120381

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 69
    .local v1, "bottomButton":Landroid/widget/Button;
    const-string v4, "android.intent.action.INSERT"

    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    const v4, 0x7f120380

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 81
    .local v0, "args":Landroid/os/Bundle;
    const-class v4, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-static {p0, v4, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    .line 83
    .local v2, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 84
    .local v3, "transaction":Landroid/app/FragmentTransaction;
    const v4, 0x7f1200aa

    invoke-virtual {v3, v4, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 85
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 86
    check-cast v2, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;

    .end local v2    # "f":Landroid/app/Fragment;
    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mApnEditorFragment:Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;

    .line 87
    new-instance v4, Lcom/android/settings_ex/ApnEditor$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/ApnEditor$2;-><init>(Lcom/android/settings_ex/ApnEditor;)V

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnEditor;->setOnButtonClickListener(Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;)V

    .line 99
    return-void

    .line 72
    .end local v3    # "transaction":Landroid/app/FragmentTransaction;
    :cond_1
    const v4, 0x7f0c0456

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 73
    new-instance v4, Lcom/android/settings_ex/ApnEditor$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/ApnEditor$1;-><init>(Lcom/android/settings_ex/ApnEditor;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->onDestroy()V

    .line 109
    return-void
.end method

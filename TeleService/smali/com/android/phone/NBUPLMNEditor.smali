.class public Lcom/android/phone/NBUPLMNEditor;
.super Lcn/nubia/commonui/phone/widget/NubiaDialogActivity;
.source "NBUPLMNEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;
    }
.end annotation


# instance fields
.field private mBottomButton:Landroid/widget/Button;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUPLMNEditorFragment:Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcn/nubia/commonui/phone/widget/NubiaDialogActivity;-><init>()V

    new-instance v0, Lcom/android/phone/NBUPLMNEditor$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NBUPLMNEditor$1;-><init>(Lcom/android/phone/NBUPLMNEditor;)V

    iput-object v0, p0, Lcom/android/phone/NBUPLMNEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NBUPLMNEditor;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBUPLMNEditor;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBUPLMNEditor;->mBottomButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/NBUPLMNEditor;)Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBUPLMNEditor;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBUPLMNEditor;->mUPLMNEditorFragment:Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBUPLMNEditor;->mUPLMNEditorFragment:Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;

    const/4 v1, 0x1

    # invokes: Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->dealActivityEvent(I)V
    invoke-static {v0, v1}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->access$200(Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/widget/NubiaDialogActivity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f12003d

    const v5, 0x7f120027

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/NBUPLMNEditor;->setThemes(II)V

    const v4, 0x7f040028

    invoke-virtual {p0, v4}, Lcom/android/phone/NBUPLMNEditor;->setContentView(I)V

    const v4, 0x7f0b0406

    invoke-virtual {p0, v4}, Lcom/android/phone/NBUPLMNEditor;->setTitle(I)V

    const v4, 0x7f1000ff

    invoke-virtual {p0, v4}, Lcom/android/phone/NBUPLMNEditor;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/phone/NBUPLMNEditor;->mBottomButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/NBUPLMNEditor;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "uplmn_add"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f1000fe

    invoke-virtual {p0, v4}, Lcom/android/phone/NBUPLMNEditor;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/NBUPLMNEditor;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "args":Landroid/os/Bundle;
    const-class v4, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-static {p0, v4, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    .local v1, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/phone/NBUPLMNEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .local v3, "transaction":Landroid/app/FragmentTransaction;
    const v4, 0x7f100076

    invoke-virtual {v3, v4, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    check-cast v1, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;

    .end local v1    # "f":Landroid/app/Fragment;
    iput-object v1, p0, Lcom/android/phone/NBUPLMNEditor;->mUPLMNEditorFragment:Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;

    new-instance v4, Lcom/android/phone/NBUPLMNEditor$3;

    invoke-direct {v4, p0}, Lcom/android/phone/NBUPLMNEditor$3;-><init>(Lcom/android/phone/NBUPLMNEditor;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/NBUPLMNEditor;->setOnButtonClickListener(Lcn/nubia/commonui/phone/widget/NubiaDialogActivity$OnButtonClickListener;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v2, "intentFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/phone/NBUPLMNEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/android/phone/NBUPLMNEditor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    .end local v3    # "transaction":Landroid/app/FragmentTransaction;
    :cond_1
    iget-object v4, p0, Lcom/android/phone/NBUPLMNEditor;->mBottomButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/phone/NBUPLMNEditor$2;

    invoke-direct {v5, p0}, Lcom/android/phone/NBUPLMNEditor$2;-><init>(Lcom/android/phone/NBUPLMNEditor;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcn/nubia/commonui/phone/widget/NubiaDialogActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/phone/NBUPLMNEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/NBUPLMNEditor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

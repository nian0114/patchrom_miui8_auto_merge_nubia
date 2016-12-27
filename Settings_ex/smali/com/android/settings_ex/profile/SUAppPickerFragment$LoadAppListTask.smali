.class Lcom/android/settings_ex/profile/SUAppPickerFragment$LoadAppListTask;
.super Landroid/os/AsyncTask;
.source "SUAppPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/profile/SUAppPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAppListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field private listAdapter:Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;

.field final synthetic this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/profile/SUAppPickerFragment;)V
    .locals 1

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$LoadAppListTask;->this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$LoadAppListTask;->this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$LoadAppListTask;->activity:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/profile/SUAppPickerFragment;Lcom/android/settings_ex/profile/SUAppPickerFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/profile/SUAppPickerFragment;
    .param p2, "x1"    # Lcom/android/settings_ex/profile/SUAppPickerFragment$1;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/settings_ex/profile/SUAppPickerFragment$LoadAppListTask;-><init>(Lcom/android/settings_ex/profile/SUAppPickerFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/profile/SUAppPickerFragment$LoadAppListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 110
    new-instance v0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$LoadAppListTask;->this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;

    iget-object v2, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$LoadAppListTask;->activity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;-><init>(Lcom/android/settings_ex/profile/SUAppPickerFragment;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$LoadAppListTask;->listAdapter:Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;

    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 99
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/profile/SUAppPickerFragment$LoadAppListTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$LoadAppListTask;->listAdapter:Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$LoadAppListTask;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$LoadAppListTask;->this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;

    # getter for: Lcom/android/settings_ex/profile/SUAppPickerFragment;->mSpinnerDlg:Lcn/nubia/commonui/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->access$300(Lcom/android/settings_ex/profile/SUAppPickerFragment;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$LoadAppListTask;->this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;

    # getter for: Lcom/android/settings_ex/profile/SUAppPickerFragment;->mSpinnerDlg:Lcn/nubia/commonui/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->access$300(Lcom/android/settings_ex/profile/SUAppPickerFragment;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$LoadAppListTask;->this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;

    # getter for: Lcom/android/settings_ex/profile/SUAppPickerFragment;->mSpinnerDlg:Lcn/nubia/commonui/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->access$300(Lcom/android/settings_ex/profile/SUAppPickerFragment;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 125
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 126
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$LoadAppListTask;->this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;

    iget-object v1, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$LoadAppListTask;->listAdapter:Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$LoadAppListTask;->this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;

    # invokes: Lcom/android/settings_ex/profile/SUAppPickerFragment;->showLoadAppListView()V
    invoke-static {v0}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->access$200(Lcom/android/settings_ex/profile/SUAppPickerFragment;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$LoadAppListTask;->this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;

    # invokes: Lcom/android/settings_ex/profile/SUAppPickerFragment;->initProgressDialog()V
    invoke-static {v0}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->access$100(Lcom/android/settings_ex/profile/SUAppPickerFragment;)V

    .line 105
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 106
    return-void
.end method

.class Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask$1;
.super Ljava/lang/Object;
.source "NubiaNotificationAppList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask$1;->this$1:Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask$1;->this$1:Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;

    iget-object v0, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mTask:Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$300(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask$1;->this$1:Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;

    iget-object v0, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mTask:Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$300(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask$1;->this$1:Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;

    iget-object v0, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mTask:Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$300(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppAsyncTask;->cancel(Z)Z

    .line 123
    :cond_0
    return-void
.end method

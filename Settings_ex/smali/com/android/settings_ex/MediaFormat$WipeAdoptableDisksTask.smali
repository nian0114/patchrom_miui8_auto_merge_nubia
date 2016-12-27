.class Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;
.super Landroid/os/AsyncTask;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WipeAdoptableDisksTask"
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
.field private final mContext:Landroid/content/Context;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private storageManager:Landroid/os/storage/StorageManager;

.field final synthetic this$0:Lcom/android/settings_ex/MediaFormat;

.field private volID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/MediaFormat;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->this$0:Lcom/android/settings_ex/MediaFormat;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 128
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->mContext:Landroid/content/Context;

    .line 129
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 130
    # getter for: Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {p1}, Lcom/android/settings_ex/MediaFormat;->access$000(Lcom/android/settings_ex/MediaFormat;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->volID:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->mContext:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->storageManager:Landroid/os/storage/StorageManager;

    .line 133
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->volID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->storageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 151
    # getter for: Lcom/android/settings_ex/MediaFormat;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/MediaFormat;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wiping adoptable disks"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->volID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->storageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->volID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->format(Ljava/lang/String;)V

    .line 155
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 122
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 160
    # getter for: Lcom/android/settings_ex/MediaFormat;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/MediaFormat;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 162
    new-instance v0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask$1;-><init>(Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->this$0:Lcom/android/settings_ex/MediaFormat;

    # getter for: Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v0}, Lcom/android/settings_ex/MediaFormat;->access$000(Lcom/android/settings_ex/MediaFormat;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->this$0:Lcom/android/settings_ex/MediaFormat;

    invoke-static {v0, v1}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0e8e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->this$0:Lcom/android/settings_ex/MediaFormat;

    invoke-virtual {v0}, Lcom/android/settings_ex/MediaFormat;->finish()V

    .line 147
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0e06

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.class Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask$1;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask$1;->this$1:Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask$1;->this$1:Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;

    # getter for: Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->storageManager:Landroid/os/storage/StorageManager;
    invoke-static {v0}, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->access$300(Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask$1;->this$1:Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;

    # getter for: Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->volID:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->access$200(Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->mount(Ljava/lang/String;)V

    .line 165
    return-void
.end method

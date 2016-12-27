.class Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$3;
.super Ljava/lang/Thread;
.source "MiscFilesHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->execDeleteFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$3;->this$1:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;

    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$3;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$3;->this$1:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$3;->val$file:Ljava/io/File;

    # invokes: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->deleteDir(Ljava/io/File;)Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->access$300(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;Ljava/io/File;)Z

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$3;->this$1:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$3;->val$file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->deleteDB(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->access$400(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;Ljava/lang/String;)V

    .line 208
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$3;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

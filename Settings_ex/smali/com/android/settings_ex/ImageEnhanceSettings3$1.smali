.class Lcom/android/settings_ex/ImageEnhanceSettings3$1;
.super Ljava/lang/Object;
.source "ImageEnhanceSettings3.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ImageEnhanceSettings3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ImageEnhanceSettings3;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/settings_ex/ImageEnhanceSettings3$1;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 187
    const-string v0, "sys/kernel/lcd_enhance/colortmp"

    iget-object v1, p0, Lcom/android/settings_ex/ImageEnhanceSettings3$1;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings3;->mSeekBarProgress:I
    invoke-static {v1}, Lcom/android/settings_ex/ImageEnhanceSettings3;->access$000(Lcom/android/settings_ex/ImageEnhanceSettings3;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings_ex/ImageEnhanceSettings3;->writeNodeValue(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/ImageEnhanceSettings3;->access$100(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

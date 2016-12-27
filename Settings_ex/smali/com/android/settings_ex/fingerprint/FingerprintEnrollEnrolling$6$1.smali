.class Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$6$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$6;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$6;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$6;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$6$1;->this$1:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$6$1;->this$1:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$6;

    iget-object v0, v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$6;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->access$1100(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    .line 409
    return-void
.end method

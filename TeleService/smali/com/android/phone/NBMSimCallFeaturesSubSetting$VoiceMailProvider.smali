.class Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProvider;
.super Ljava/lang/Object;
.source "NBMSimCallFeaturesSubSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBMSimCallFeaturesSubSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceMailProvider"
.end annotation


# instance fields
.field public intent:Landroid/content/Intent;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;


# direct methods
.method public constructor <init>(Lcom/android/phone/NBMSimCallFeaturesSubSetting;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProvider;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProvider;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    return-void
.end method

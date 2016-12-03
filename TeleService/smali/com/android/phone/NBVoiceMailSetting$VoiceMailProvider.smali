.class Lcom/android/phone/NBVoiceMailSetting$VoiceMailProvider;
.super Ljava/lang/Object;
.source "NBVoiceMailSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBVoiceMailSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VoiceMailProvider"
.end annotation


# instance fields
.field public intent:Landroid/content/Intent;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProvider;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/NBVoiceMailSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    return-void
.end method

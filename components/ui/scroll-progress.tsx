"use client";

import { motion, type SpringOptions, useScroll, useSpring } from "motion/react";
import type { RefObject } from "react";
import { cn } from "@/lib/utils";

export type ScrollProgressProps = {
  className?: string;
  springOptions?: SpringOptions;
  containerRef?: RefObject<HTMLDivElement>;
};

const DEFAULT_SPRING_OPTIONS: SpringOptions = {
  stiffness: 200,
  damping: 50,
  restDelta: 0.001,
};

export function ScrollProgress({
  className,
  springOptions,
  containerRef,
}: ScrollProgressProps) {
  const { scrollYProgress } = useScroll({
    container: containerRef,
    // useIsomorphicLayoutEffect: Boolean(containerRef?.current),
  });

  const scaleX = useSpring(scrollYProgress, {
    ...DEFAULT_SPRING_OPTIONS,
    ...(springOptions ?? {}),
  });

  return (
    <motion.div
      className={cn("inset-x-0 top-0 h-1 origin-left", className)}
      style={{
        scaleX,
      }}
    />
  );
}

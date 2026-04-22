interface Props {
  on: boolean;
  size?: number;
}

export function BookmarkIcon({ on, size = 22 }: Props) {
  return (
    <svg
      xmlns="http://www.w3.org/2000/svg"
      viewBox="0 0 512 512"
      width={size}
      height={size}
      style={{ display: 'block', flexShrink: 0 }}
      aria-hidden="true"
    >
      <g transform="translate(128, 64)">
        <polygon
          points="256 0 256 384 128 298.666667 0 384 0 0"
          fill={on ? '#16a34a' : '#9ca3af'}
        />
      </g>
    </svg>
  );
}
